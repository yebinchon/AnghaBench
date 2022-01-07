
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int mnt_kern_flag; } ;


 int MA_OWNED ;
 int MNTK_MWAIT ;
 int MNT_IUNLOCK (struct mount*) ;
 int MNT_MTX (struct mount*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int mtx_assert (int ,int ) ;
 int vdrop (struct vnode*) ;
 int vfs_op_exit_locked (struct mount*) ;
 int vn_finished_write (struct mount*) ;
 int wakeup (struct mount*) ;

__attribute__((used)) static void
dounmount_cleanup(struct mount *mp, struct vnode *coveredvp, int mntkflags)
{

 mtx_assert(MNT_MTX(mp), MA_OWNED);
 mp->mnt_kern_flag &= ~mntkflags;
 if ((mp->mnt_kern_flag & MNTK_MWAIT) != 0) {
  mp->mnt_kern_flag &= ~MNTK_MWAIT;
  wakeup(mp);
 }
 vfs_op_exit_locked(mp);
 MNT_IUNLOCK(mp);
 if (coveredvp != ((void*)0)) {
  VOP_UNLOCK(coveredvp, 0);
  vdrop(coveredvp);
 }
 vn_finished_write(mp);
}
