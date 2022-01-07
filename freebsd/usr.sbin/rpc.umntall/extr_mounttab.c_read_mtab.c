
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef scalar_t__ time_t ;
struct mtablist {char* mtab_host; char* mtab_dirp; struct mtablist* mtab_next; scalar_t__ mtab_time; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int LOG_ERR ;
 int MNTNAMLEN ;
 int MNTPATHLEN ;
 int PATH_MOUNTTAB ;
 int STRSIZ ;
 scalar_t__ ULONG_MAX ;
 int badline (char*,char*) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 struct mtablist* malloc (int) ;
 int memmove (char*,char*,int) ;
 struct mtablist* mtabhead ;
 char* strsep (char**,char*) ;
 scalar_t__ strtoul (char*,char**,int) ;
 int syslog (int ,char*,...) ;

int
read_mtab(void)
{
 struct mtablist **mtabpp, *mtabp;
 char *hostp, *dirp, *cp;
 char str[STRSIZ];
 char *timep, *endp;
 time_t actiontime;
 u_long ultmp;
 FILE *mtabfile;

 if ((mtabfile = fopen(PATH_MOUNTTAB, "r")) == ((void*)0)) {
  if (errno == ENOENT)
   return (0);
  else {
   syslog(LOG_ERR, "can't open %s", PATH_MOUNTTAB);
   return (0);
  }
 }
 actiontime = 0;
 mtabpp = &mtabhead;
 while (fgets(str, STRSIZ, mtabfile) != ((void*)0)) {
  cp = str;
  errno = 0;
  if (*cp == '#' || *cp == ' ' || *cp == '\n')
   continue;
  timep = strsep(&cp, " \t\n");
  if (timep == ((void*)0) || *timep == '\0') {
   badline("time", timep);
   continue;
  }
  hostp = strsep(&cp, " \t\n");
  if (hostp == ((void*)0) || *hostp == '\0') {
   badline("host", hostp);
   continue;
  }
  dirp = strsep(&cp, " \t\n");
  if (dirp == ((void*)0) || *dirp == '\0') {
   badline("dir", dirp);
   continue;
  }
  ultmp = strtoul(timep, &endp, 10);
  if (ultmp == ULONG_MAX || *endp != '\0') {
   badline("time", timep);
   continue;
  }
  actiontime = ultmp;
  if ((mtabp = malloc(sizeof (struct mtablist))) == ((void*)0)) {
   syslog(LOG_ERR, "malloc");
   fclose(mtabfile);
   return (0);
  }
  mtabp->mtab_time = actiontime;
  memmove(mtabp->mtab_host, hostp, MNTNAMLEN);
  mtabp->mtab_host[MNTNAMLEN - 1] = '\0';
  memmove(mtabp->mtab_dirp, dirp, MNTPATHLEN);
  mtabp->mtab_dirp[MNTPATHLEN - 1] = '\0';
  mtabp->mtab_next = (struct mtablist *)((void*)0);
  *mtabpp = mtabp;
  mtabpp = &mtabp->mtab_next;
 }
 fclose(mtabfile);
 return (1);
}
