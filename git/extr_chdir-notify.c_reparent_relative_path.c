
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ is_absolute_path (char const*) ;
 char const* remove_leading_path (char*,char const*) ;
 char* xstrdup (char const*) ;
 char* xstrfmt (char*,char const*,char const*) ;

char *reparent_relative_path(const char *old_cwd,
        const char *new_cwd,
        const char *path)
{
 char *ret, *full;

 if (is_absolute_path(path))
  return xstrdup(path);

 full = xstrfmt("%s/%s", old_cwd, path);
 ret = xstrdup(remove_leading_path(full, new_cwd));
 free(full);

 return ret;
}
