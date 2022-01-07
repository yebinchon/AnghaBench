
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtablist {int mtab_host; int mtab_dirp; struct mtablist* mtab_next; } ;


 int MNTNAMLEN ;
 int bzero (int ,int ) ;
 int free (char*) ;
 struct mtablist* mtabhead ;
 scalar_t__ strcmp (int ,char*) ;
 char* strdup (char*) ;
 int warnx (char*,char*,int ,int ) ;

void
clean_mtab(char *hostp, char *dirp, int verbose)
{
 struct mtablist *mtabp;
 char *host;


 host = strdup(hostp);
 for (mtabp = mtabhead; mtabp != ((void*)0); mtabp = mtabp->mtab_next) {
  if (strcmp(mtabp->mtab_host, host) != 0)
   continue;
  if (dirp != ((void*)0) && strcmp(mtabp->mtab_dirp, dirp) != 0)
   continue;

  if (verbose)
   warnx("delete mounttab entry%s %s:%s",
       (dirp == ((void*)0)) ? " by host" : "",
       mtabp->mtab_host, mtabp->mtab_dirp);
  bzero(mtabp->mtab_host, MNTNAMLEN);
 }
 free(host);
}
