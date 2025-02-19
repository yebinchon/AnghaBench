
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_link_args {struct componentname* a_cnp; struct vnode* a_tdvp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct inode {int i_flags; int i_flag; scalar_t__ i_nlink; } ;
struct componentname {int cn_flags; } ;
typedef scalar_t__ nlink_t ;


 int APPEND ;
 int DOINGASYNC (struct vnode*) ;
 int EMLINK ;
 int EPERM ;
 scalar_t__ EXT4_LINK_MAX ;
 int HASBUF ;
 int IMMUTABLE ;
 int IN_CHANGE ;
 struct inode* VTOI (struct vnode*) ;
 int ext2_direnter (struct inode*,struct vnode*,struct componentname*) ;
 int ext2_update (struct vnode*,int) ;
 int panic (char*) ;

__attribute__((used)) static int
ext2_link(struct vop_link_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode *tdvp = ap->a_tdvp;
 struct componentname *cnp = ap->a_cnp;
 struct inode *ip;
 int error;





 ip = VTOI(vp);
 if ((nlink_t)ip->i_nlink >= EXT4_LINK_MAX) {
  error = EMLINK;
  goto out;
 }
 if (ip->i_flags & (IMMUTABLE | APPEND)) {
  error = EPERM;
  goto out;
 }
 ip->i_nlink++;
 ip->i_flag |= IN_CHANGE;
 error = ext2_update(vp, !DOINGASYNC(vp));
 if (!error)
  error = ext2_direnter(ip, tdvp, cnp);
 if (error) {
  ip->i_nlink--;
  ip->i_flag |= IN_CHANGE;
 }
out:
 return (error);
}
