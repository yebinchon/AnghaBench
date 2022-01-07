
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_rmdir_args {struct componentname* a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct inode {int i_flags; scalar_t__ i_nlink; int i_flag; int i_number; } ;
struct componentname {int cn_thread; int cn_cred; } ;
typedef int off_t ;


 int APPEND ;
 int ENOTEMPTY ;
 int EPERM ;
 int IMMUTABLE ;
 int IN_CHANGE ;
 int IO_SYNC ;
 struct vnode* ITOV (struct inode*) ;
 int LK_EXCLUSIVE ;
 int LK_NOWAIT ;
 int LK_RETRY ;
 int NOUNLINK ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 struct inode* VTOI (struct vnode*) ;
 int cache_purge (struct vnode*) ;
 int ext2_dec_nlink (struct inode*) ;
 int ext2_dirempty (struct inode*,int ,int ) ;
 int ext2_dirremove (struct vnode*,struct componentname*) ;
 int ext2_truncate (struct vnode*,int ,int ,int ,int ) ;
 scalar_t__ vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
ext2_rmdir(struct vop_rmdir_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 struct componentname *cnp = ap->a_cnp;
 struct inode *ip, *dp;
 int error;

 ip = VTOI(vp);
 dp = VTOI(dvp);
 if (!ext2_dirempty(ip, dp->i_number, cnp->cn_cred)) {
  error = ENOTEMPTY;
  goto out;
 }
 if ((dp->i_flags & APPEND)
     || (ip->i_flags & (NOUNLINK | IMMUTABLE | APPEND))) {
  error = EPERM;
  goto out;
 }





 error = ext2_dirremove(dvp, cnp);
 if (error)
  goto out;
 ext2_dec_nlink(dp);
 dp->i_flag |= IN_CHANGE;
 cache_purge(dvp);
 VOP_UNLOCK(dvp, 0);




 ip->i_nlink = 0;
 error = ext2_truncate(vp, (off_t)0, IO_SYNC, cnp->cn_cred,
     cnp->cn_thread);
 cache_purge(ITOV(ip));
 if (vn_lock(dvp, LK_EXCLUSIVE | LK_NOWAIT) != 0) {
  VOP_UNLOCK(vp, 0);
  vn_lock(dvp, LK_EXCLUSIVE | LK_RETRY);
  vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 }
out:
 return (error);
}
