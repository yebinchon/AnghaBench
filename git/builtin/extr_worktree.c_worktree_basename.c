
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *worktree_basename(const char *path, int *olen)
{
 const char *name;
 int len;

 len = strlen(path);
 while (len && is_dir_sep(path[len - 1]))
  len--;

 for (name = path + len - 1; name > path; name--)
  if (is_dir_sep(*name)) {
   name++;
   break;
  }

 *olen = len;
 return name;
}
