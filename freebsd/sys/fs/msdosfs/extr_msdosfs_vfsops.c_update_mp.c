
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct msdosfsmount {int pm_gid; int pm_uid; int pm_mask; int pm_dirmask; int pm_flags; int * pm_u2d; int * pm_d2u; int * pm_u2w; int * pm_w2u; } ;
struct mount {int mnt_optnew; } ;
struct TYPE_2__ {int (* open ) (void*,void*,int **) ;} ;


 int ALLPERMS ;
 int MSDOSFSMNT_KICONV ;
 int MSDOSFSMNT_LONGNAME ;
 int MSDOSFSMNT_NOWIN95 ;
 int MSDOSFSMNT_SHORTNAME ;
 struct msdosfsmount* VFSTOMSDOSFS (struct mount*) ;
 TYPE_1__* msdosfs_iconv ;
 int stub1 (void*,void*,int **) ;
 int stub2 (void*,void*,int **) ;
 int stub3 (void*,void*,int **) ;
 int stub4 (void*,void*,int **) ;
 int vfs_flagopt (int ,char*,int*,int) ;
 int vfs_getopt (int ,char*,void**,int *) ;
 int vfs_scanopt (int ,char*,char*,int*) ;

__attribute__((used)) static int
update_mp(struct mount *mp, struct thread *td)
{
 struct msdosfsmount *pmp = VFSTOMSDOSFS(mp);
 void *dos, *win, *local;
 int error, v;

 if (!vfs_getopt(mp->mnt_optnew, "kiconv", ((void*)0), ((void*)0))) {
  if (msdosfs_iconv != ((void*)0)) {
   error = vfs_getopt(mp->mnt_optnew,
       "cs_win", &win, ((void*)0));
   if (!error)
    error = vfs_getopt(mp->mnt_optnew,
        "cs_local", &local, ((void*)0));
   if (!error)
    error = vfs_getopt(mp->mnt_optnew,
        "cs_dos", &dos, ((void*)0));
   if (!error) {
    msdosfs_iconv->open(win, local, &pmp->pm_u2w);
    msdosfs_iconv->open(local, win, &pmp->pm_w2u);
    msdosfs_iconv->open(dos, local, &pmp->pm_u2d);
    msdosfs_iconv->open(local, dos, &pmp->pm_d2u);
   }
   if (error != 0)
    return (error);
  } else {
   pmp->pm_w2u = ((void*)0);
   pmp->pm_u2w = ((void*)0);
   pmp->pm_d2u = ((void*)0);
   pmp->pm_u2d = ((void*)0);
  }
 }

 if (vfs_scanopt(mp->mnt_optnew, "gid", "%d", &v) == 1)
  pmp->pm_gid = v;
 if (vfs_scanopt(mp->mnt_optnew, "uid", "%d", &v) == 1)
  pmp->pm_uid = v;
 if (vfs_scanopt(mp->mnt_optnew, "mask", "%d", &v) == 1)
  pmp->pm_mask = v & ALLPERMS;
 if (vfs_scanopt(mp->mnt_optnew, "dirmask", "%d", &v) == 1)
  pmp->pm_dirmask = v & ALLPERMS;
 vfs_flagopt(mp->mnt_optnew, "shortname",
     &pmp->pm_flags, MSDOSFSMNT_SHORTNAME);
 vfs_flagopt(mp->mnt_optnew, "shortnames",
     &pmp->pm_flags, MSDOSFSMNT_SHORTNAME);
 vfs_flagopt(mp->mnt_optnew, "longname",
     &pmp->pm_flags, MSDOSFSMNT_LONGNAME);
 vfs_flagopt(mp->mnt_optnew, "longnames",
     &pmp->pm_flags, MSDOSFSMNT_LONGNAME);
 vfs_flagopt(mp->mnt_optnew, "kiconv",
     &pmp->pm_flags, MSDOSFSMNT_KICONV);

 if (vfs_getopt(mp->mnt_optnew, "nowin95", ((void*)0), ((void*)0)) == 0)
  pmp->pm_flags |= MSDOSFSMNT_NOWIN95;
 else
  pmp->pm_flags &= ~MSDOSFSMNT_NOWIN95;

 if (pmp->pm_flags & MSDOSFSMNT_NOWIN95)
  pmp->pm_flags |= MSDOSFSMNT_SHORTNAME;
 else
  pmp->pm_flags |= MSDOSFSMNT_LONGNAME;
 return 0;
}
