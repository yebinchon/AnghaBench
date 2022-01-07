
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountlist {char* ml_host; char* ml_dirp; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int LOG_ERR ;
 size_t MNTNAMLEN ;
 size_t MNTPATHLEN ;
 int SLIST_INSERT_HEAD (int *,struct mountlist*,int ) ;
 int STRSIZ ;
 int _PATH_RMOUNTLIST ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ malloc (int) ;
 int mlhead ;
 int next ;
 int out_of_mem () ;
 int strncpy (char*,char*,size_t) ;
 char* strsep (char**,char*) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static void
get_mountlist(void)
{
 struct mountlist *mlp;
 char *host, *dirp, *cp;
 char str[STRSIZ];
 FILE *mlfile;

 if ((mlfile = fopen(_PATH_RMOUNTLIST, "r")) == ((void*)0)) {
  if (errno == ENOENT)
   return;
  else {
   syslog(LOG_ERR, "can't open %s", _PATH_RMOUNTLIST);
   return;
  }
 }
 while (fgets(str, STRSIZ, mlfile) != ((void*)0)) {
  cp = str;
  host = strsep(&cp, " \t\n");
  dirp = strsep(&cp, " \t\n");
  if (host == ((void*)0) || dirp == ((void*)0))
   continue;
  mlp = (struct mountlist *)malloc(sizeof (*mlp));
  if (mlp == (struct mountlist *)((void*)0))
   out_of_mem();
  strncpy(mlp->ml_host, host, MNTNAMLEN);
  mlp->ml_host[MNTNAMLEN] = '\0';
  strncpy(mlp->ml_dirp, dirp, MNTPATHLEN);
  mlp->ml_dirp[MNTPATHLEN] = '\0';

  SLIST_INSERT_HEAD(&mlhead, mlp, next);
 }
 fclose(mlfile);
}
