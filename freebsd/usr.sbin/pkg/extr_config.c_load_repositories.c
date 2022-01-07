
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char const* d_name; } ;
typedef int path ;
typedef int DIR ;


 int CONFFILE_REPO ;
 int F_OK ;
 int MAXPATHLEN ;
 scalar_t__ access (char*,int ) ;
 int closedir (int *) ;
 int * opendir (char const*) ;
 scalar_t__ read_conf_file (char*,int ) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char const*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
load_repositories(const char *repodir)
{
 struct dirent *ent;
 DIR *d;
 char *p;
 size_t n;
 char path[MAXPATHLEN];
 int ret;

 ret = 0;

 if ((d = opendir(repodir)) == ((void*)0))
  return (1);

 while ((ent = readdir(d))) {

  if ((n = strlen(ent->d_name)) <= 5)
   continue;
  p = &ent->d_name[n - 5];
  if (strcmp(p, ".conf") == 0) {
   snprintf(path, sizeof(path), "%s%s%s",
       repodir,
       repodir[strlen(repodir) - 1] == '/' ? "" : "/",
       ent->d_name);
   if (access(path, F_OK) == 0 &&
       read_conf_file(path, CONFFILE_REPO)) {
    ret = 1;
    goto cleanup;
   }
  }
 }

cleanup:
 closedir(d);

 return (ret);
}
