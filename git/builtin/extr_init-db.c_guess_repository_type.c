
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int strcmp (char const*,char const*) ;
 char* strrchr (char const*,char) ;
 char* xgetcwd () ;

__attribute__((used)) static int guess_repository_type(const char *git_dir)
{
 const char *slash;
 char *cwd;
 int cwd_is_git_dir;





 if (!strcmp(".", git_dir))
  return 1;
 cwd = xgetcwd();
 cwd_is_git_dir = !strcmp(git_dir, cwd);
 free(cwd);
 if (cwd_is_git_dir)
  return 1;



 if (!strcmp(git_dir, ".git"))
  return 0;
 slash = strrchr(git_dir, '/');
 if (slash && !strcmp(slash, "/.git"))
  return 0;





 return 1;
}
