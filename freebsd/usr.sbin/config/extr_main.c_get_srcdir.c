
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 int EXIT_FAILURE ;
 int MAXPATHLEN ;
 int err (int ,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int * realpath (char*,char*) ;
 char* srcdir ;
 int stat (char*,struct stat*) ;
 char* strdup (char*) ;
 int strlcpy (char*,char*,int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
get_srcdir(void)
{
 struct stat lg, phy;
 char *p, *pwd;
 int i;

 if (realpath("../..", srcdir) == ((void*)0))
  err(EXIT_FAILURE, "Unable to find root of source tree");
 if ((pwd = getenv("PWD")) != ((void*)0) && *pwd == '/' &&
     (pwd = strdup(pwd)) != ((void*)0)) {

  for (i = 0; i < 2; i++) {
   if ((p = strrchr(pwd, '/')) == ((void*)0)) {
    free(pwd);
    return;
   }
   *p = '\0';
  }
  if (stat(pwd, &lg) != -1 && stat(srcdir, &phy) != -1 &&
      lg.st_dev == phy.st_dev && lg.st_ino == phy.st_ino)
   strlcpy(srcdir, pwd, MAXPATHLEN);
  free(pwd);
 }
}
