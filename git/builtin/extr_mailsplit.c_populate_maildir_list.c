
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 scalar_t__ ENOENT ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int error_errno (char*,char*) ;
 int free (char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int string_list_insert (struct string_list*,char*) ;
 char* xstrfmt (char*,char const*,char*) ;

__attribute__((used)) static int populate_maildir_list(struct string_list *list, const char *path)
{
 DIR *dir;
 struct dirent *dent;
 char *name = ((void*)0);
 char *subs[] = { "cur", "new", ((void*)0) };
 char **sub;
 int ret = -1;

 for (sub = subs; *sub; ++sub) {
  free(name);
  name = xstrfmt("%s/%s", path, *sub);
  if ((dir = opendir(name)) == ((void*)0)) {
   if (errno == ENOENT)
    continue;
   error_errno("cannot opendir %s", name);
   goto out;
  }

  while ((dent = readdir(dir)) != ((void*)0)) {
   if (dent->d_name[0] == '.')
    continue;
   free(name);
   name = xstrfmt("%s/%s", *sub, dent->d_name);
   string_list_insert(list, name);
  }

  closedir(dir);
 }

 ret = 0;

out:
 free(name);
 return ret;
}
