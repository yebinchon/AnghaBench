
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct unionfs_mount {TYPE_2__* um_uppervp; TYPE_1__* um_lowervp; } ;
struct statfs {int f_blocks; int f_bsize; int f_ffree; scalar_t__ f_files; int f_bavail; int f_bfree; int f_iosize; int f_flags; int f_type; } ;
struct mount {int dummy; } ;
typedef int off_t ;
struct TYPE_4__ {int v_mount; } ;
struct TYPE_3__ {int v_mount; } ;


 struct unionfs_mount* MOUNTTOUNIONFSMOUNT (struct mount*) ;
 int M_STATFS ;
 int M_WAITOK ;
 int M_ZERO ;
 int UNIONFSDEBUG (char*,void*,void*,void*) ;
 int VFS_STATFS (int ,struct statfs*) ;
 int free (struct statfs*,int ) ;
 struct statfs* malloc (int,int ,int) ;

__attribute__((used)) static int
unionfs_statfs(struct mount *mp, struct statfs *sbp)
{
 struct unionfs_mount *ump;
 int error;
 struct statfs *mstat;
 uint64_t lbsize;

 ump = MOUNTTOUNIONFSMOUNT(mp);

 UNIONFSDEBUG("unionfs_statfs(mp = %p, lvp = %p, uvp = %p)\n",
     (void *)mp, (void *)ump->um_lowervp, (void *)ump->um_uppervp);

 mstat = malloc(sizeof(struct statfs), M_STATFS, M_WAITOK | M_ZERO);

 error = VFS_STATFS(ump->um_lowervp->v_mount, mstat);
 if (error) {
  free(mstat, M_STATFS);
  return (error);
 }


 sbp->f_blocks = mstat->f_blocks;
 sbp->f_files = mstat->f_files;

 lbsize = mstat->f_bsize;

 error = VFS_STATFS(ump->um_uppervp->v_mount, mstat);
 if (error) {
  free(mstat, M_STATFS);
  return (error);
 }






 sbp->f_type = mstat->f_type;
 sbp->f_flags = mstat->f_flags;
 sbp->f_bsize = mstat->f_bsize;
 sbp->f_iosize = mstat->f_iosize;

 if (mstat->f_bsize != lbsize)
  sbp->f_blocks = ((off_t)sbp->f_blocks * lbsize) /
      mstat->f_bsize;

 sbp->f_blocks += mstat->f_blocks;
 sbp->f_bfree = mstat->f_bfree;
 sbp->f_bavail = mstat->f_bavail;
 sbp->f_files += mstat->f_files;
 sbp->f_ffree = mstat->f_ffree;

 free(mstat, M_STATFS);
 return (0);
}
