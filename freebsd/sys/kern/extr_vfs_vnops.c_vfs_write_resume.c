
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int mnt_kern_flag; int mnt_writeopcount; int mnt_flag; TYPE_1__* mnt_susp_owner; } ;
struct TYPE_2__ {int td_pflags; } ;


 int KASSERT (int,char*) ;
 int MNTK_SUSPEND ;
 int MNTK_SUSPEND2 ;
 int MNTK_SUSPENDED ;
 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_REF (struct mount*) ;
 int MPASS (int ) ;
 int TDP_IGNSUSP ;
 int VFS_SUSP_CLEAN (struct mount*) ;
 int VR_NO_SUSPCLR ;
 int VR_START_WRITE ;
 TYPE_1__* curthread ;
 int vfs_op_exit (struct mount*) ;
 int vn_start_write_refed (struct mount*,int ,int) ;
 int vn_suspendable (struct mount*) ;
 int wakeup (int *) ;

void
vfs_write_resume(struct mount *mp, int flags)
{

 MPASS(vn_suspendable(mp));

 MNT_ILOCK(mp);
 if ((mp->mnt_kern_flag & MNTK_SUSPEND) != 0) {
  KASSERT(mp->mnt_susp_owner == curthread, ("mnt_susp_owner"));
  mp->mnt_kern_flag &= ~(MNTK_SUSPEND | MNTK_SUSPEND2 |
           MNTK_SUSPENDED);
  mp->mnt_susp_owner = ((void*)0);
  wakeup(&mp->mnt_writeopcount);
  wakeup(&mp->mnt_flag);
  curthread->td_pflags &= ~TDP_IGNSUSP;
  if ((flags & VR_START_WRITE) != 0) {
   MNT_REF(mp);
   mp->mnt_writeopcount++;
  }
  MNT_IUNLOCK(mp);
  if ((flags & VR_NO_SUSPCLR) == 0)
   VFS_SUSP_CLEAN(mp);
  vfs_op_exit(mp);
 } else if ((flags & VR_START_WRITE) != 0) {
  MNT_REF(mp);
  vn_start_write_refed(mp, 0, 1);
 } else {
  MNT_IUNLOCK(mp);
 }
}
