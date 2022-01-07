
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIDE_DOTFILES_DOTGITONLY ;
 scalar_t__ HIDE_DOTFILES_FALSE ;
 scalar_t__ HIDE_DOTFILES_TRUE ;
 int assert (int) ;
 scalar_t__ hide_dotfiles ;
 scalar_t__ is_dir_sep (char const) ;
 int strncasecmp (char*,char const*,int) ;
 int win32_skip_dos_drive_prefix (char**) ;

__attribute__((used)) static inline int needs_hiding(const char *path)
{
 const char *basename;

 if (hide_dotfiles == HIDE_DOTFILES_FALSE)
  return 0;


 win32_skip_dos_drive_prefix((char **)&path);
 if (!*path)
  return 0;

 for (basename = path; *path; path++)
  if (is_dir_sep(*path)) {
   do {
    path++;
   } while (is_dir_sep(*path));

   if (*path)
    basename = path;
   else
    break;
  }

 if (hide_dotfiles == HIDE_DOTFILES_TRUE)
  return *basename == '.';

 assert(hide_dotfiles == HIDE_DOTFILES_DOTGITONLY);
 return !strncasecmp(".git", basename, 4) &&
  (!basename[4] || is_dir_sep(basename[4]));
}
