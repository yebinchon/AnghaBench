
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_remove_args {int a_cnp; struct vnode* a_dvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct inode {int i_flags; int i_flag; int i_nlink; } ;


 int APPEND ;
 int EPERM ;
 int IMMUTABLE ;
 int IN_CHANGE ;
 int NOUNLINK ;
 struct inode* VTOI (struct vnode*) ;
 int ext2_dirremove (struct vnode*,int ) ;

__attribute__((used)) static int
ext2_remove(struct vop_remove_args *ap)
{
 struct inode *ip;
 struct vnode *vp = ap->a_vp;
 struct vnode *dvp = ap->a_dvp;
 int error;

 ip = VTOI(vp);
 if ((ip->i_flags & (NOUNLINK | IMMUTABLE | APPEND)) ||
     (VTOI(dvp)->i_flags & APPEND)) {
  error = EPERM;
  goto out;
 }
 error = ext2_dirremove(dvp, ap->a_cnp);
 if (error == 0) {
  ip->i_nlink--;
  ip->i_flag |= IN_CHANGE;
 }
out:
 return (error);
}
