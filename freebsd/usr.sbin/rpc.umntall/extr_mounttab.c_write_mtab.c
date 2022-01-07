
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtablist {char* mtab_host; char* mtab_dirp; scalar_t__ mtab_time; struct mtablist* mtab_next; } ;
typedef int FILE ;


 int LOG_ERR ;
 int PATH_MOUNTTAB ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,long,char*,char*) ;
 struct mtablist* mtabhead ;
 scalar_t__ strcmp (char*,char*) ;
 int syslog (int ,char*,int ) ;
 int unlink (int ) ;
 int warnx (char*,char*,char*) ;

int
write_mtab(int verbose)
{
 struct mtablist *mtabp, *mp;
 FILE *mtabfile;
 int line;

 if ((mtabfile = fopen(PATH_MOUNTTAB, "w")) == ((void*)0)) {
  syslog(LOG_ERR, "can't write to %s", PATH_MOUNTTAB);
   return (0);
 }
 line = 0;
 for (mtabp = mtabhead; mtabp != ((void*)0); mtabp = mtabp->mtab_next) {
  if (mtabp->mtab_host[0] == '\0')
   continue;

  for (mp = mtabp->mtab_next; mp != ((void*)0); mp = mp->mtab_next)
   if (strcmp(mtabp->mtab_host, mp->mtab_host) == 0 &&
       strcmp(mtabp->mtab_dirp, mp->mtab_dirp) == 0)
    break;
  if (mp != ((void*)0))
   continue;

  fprintf(mtabfile, "%ld\t%s\t%s\n",
      (long)mtabp->mtab_time, mtabp->mtab_host,
      mtabp->mtab_dirp);
  if (verbose)
   warnx("write mounttab entry %s:%s",
       mtabp->mtab_host, mtabp->mtab_dirp);
  line++;
 }
 fclose(mtabfile);
 if (line == 0) {
  if (unlink(PATH_MOUNTTAB) == -1) {
   syslog(LOG_ERR, "can't remove %s", PATH_MOUNTTAB);
   return (0);
  }
 }
 return (1);
}
