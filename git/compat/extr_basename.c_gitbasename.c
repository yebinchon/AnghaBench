
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (char) ;
 int skip_dos_drive_prefix (char**) ;

char *gitbasename (char *path)
{
 const char *base;

 if (path)
  skip_dos_drive_prefix(&path);

 if (!path || !*path)
  return ".";

 for (base = path; *path; path++) {
  if (!is_dir_sep(*path))
   continue;
  do {
   path++;
  } while (is_dir_sep(*path));
  if (*path)
   base = path;
  else
   while (--path != base && is_dir_sep(*path))
    *path = '\0';
 }
 return (char *)base;
}
