
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {char* f_mntonname; char* f_fstypename; int f_mntfromname; } ;
struct quotause {struct quotause* next; int fsname; } ;
struct fstab {int dummy; } ;


 int MNT_NOWAIT ;
 int endfsent () ;
 int err (int,char*,int *) ;
 int errx (int,char*) ;
 int * filename ;
 int free (struct quotause*) ;
 struct fstab* getfsspec (int ) ;
 int getmntinfo (struct statfs**,int ) ;
 scalar_t__ getnfsquota (struct statfs*,struct quotause*,long,int) ;
 scalar_t__ getufsquota (struct fstab*,struct quotause*,long,int) ;
 scalar_t__ lflag ;
 scalar_t__ malloc (int) ;
 int setfsent () ;
 scalar_t__ statfs (int *,struct statfs*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static struct quotause *
getprivs(long id, int quotatype)
{
 struct quotause *qup, *quptail = ((void*)0);
 struct fstab *fs;
 struct quotause *quphead;
 struct statfs *fst;
 int nfst, i;
 struct statfs sfb;

 qup = quphead = (struct quotause *)0;

 if (filename != ((void*)0) && statfs(filename, &sfb) != 0)
  err(1, "cannot statfs %s", filename);
 nfst = getmntinfo(&fst, MNT_NOWAIT);
 if (nfst == 0)
  errx(2, "no filesystems mounted!");
 setfsent();
 for (i = 0; i < nfst; i++) {
  if (qup == ((void*)0)) {
   if ((qup = (struct quotause *)malloc(sizeof *qup))
       == ((void*)0))
    errx(2, "out of memory");
  }




  if (filename != ((void*)0) &&
      strcmp(sfb.f_mntonname, fst[i].f_mntonname) != 0)
   continue;
  if (strcmp(fst[i].f_fstypename, "nfs") == 0) {
   if (lflag)
    continue;
   if (getnfsquota(&fst[i], qup, id, quotatype) == 0)
    continue;
  } else if (strcmp(fst[i].f_fstypename, "ufs") == 0) {
   if ((fs = getfsspec(fst[i].f_mntfromname)) == ((void*)0))
    continue;
   if (getufsquota(fs, qup, id, quotatype) == 0)
    continue;
  } else
   continue;
  strcpy(qup->fsname, fst[i].f_mntonname);
  if (quphead == ((void*)0))
   quphead = qup;
  else
   quptail->next = qup;
  quptail = qup;
  quptail->next = 0;
  qup = ((void*)0);
 }
 if (qup)
  free(qup);
 endfsent();
 return (quphead);
}
