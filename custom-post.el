(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "<f7>") 'toggle-truncate-lines)
(global-set-key (kbd "C-`") 'toggle-frame-maximized)
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))


(create-fontset-from-ascii-font "Ricty for Powerline-14:weight=normal:slant=normal" nil "ricty")
(set-fontset-font "fontset-ricty"
                  'unicode
                  ;; (font-spec :family "Ricty for Powerline" :size 14)  ;; sizeを指定するとtext-scale-modeが反映されない
                  (font-spec :family "Ricty for Powerline")
                  nil
                  'append)
(add-to-list 'default-frame-alist '(font . "fontset-ricty"))


;; (use-package migemo
;;   :if (executable-find "cmigemo")
;;   :config
;;   (setq migemo-options '("-q" "--emacs"))
;;   (setq migemo-user-dictionary nil)
;;   (setq migemo-regex-dictionary nil)
;;   (setq migemo-coding-system 'utf-8-unix)
;;   (load-library "migemo")
;;   (migemo-init)
;;   (setq migemo-command "/usr/local/bin/cmigemo")
;;   (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict"))


(require 'migemo)
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs"))

;; Set your installed path
(setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")

(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(migemo-init)

(require 'avy-migemo)
(avy-migemo-mode 1)
(require 'avy-migemo-e.g.swiper)
