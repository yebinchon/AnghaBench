
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_mknod_args {TYPE_1__* a_dvp; int a_cnp; struct vnode** a_vpp; struct vattr* a_vap; } ;
struct vnode {int v_type; } ;
struct vattr {scalar_t__ va_rdev; int va_mode; int va_type; } ;
struct inode {int i_flag; scalar_t__ i_rdev; int i_number; } ;
typedef int ino_t ;
struct TYPE_2__ {int v_mount; } ;


 int IN_ACCESS ;
 int IN_CHANGE ;
 int IN_E4EXTENTS ;
 int IN_UPDATE ;
 int LK_EXCLUSIVE ;
 int MAKEIMODE (int ,int ) ;
 int VFS_VGET (int ,int ,int ,struct vnode**) ;
 int VNON ;
 scalar_t__ VNOVAL ;
 struct inode* VTOI (struct vnode*) ;
 int ext2_makeinode (int ,TYPE_1__*,struct vnode**,int ) ;
 int vgone (struct vnode*) ;
 int vput (struct vnode*) ;

__attribute__((used)) static int
ext2_mknod(struct vop_mknod_args *ap)
{
 struct vattr *vap = ap->a_vap;
 struct vnode **vpp = ap->a_vpp;
 struct inode *ip;
 ino_t ino;
 int error;

 error = ext2_makeinode(MAKEIMODE(vap->va_type, vap->va_mode),
     ap->a_dvp, vpp, ap->a_cnp);
 if (error)
  return (error);
 ip = VTOI(*vpp);
 ip->i_flag |= IN_ACCESS | IN_CHANGE | IN_UPDATE;
 if (vap->va_rdev != VNOVAL) {




  if (!(ip->i_flag & IN_E4EXTENTS))
   ip->i_rdev = vap->va_rdev;
 }





 (*vpp)->v_type = VNON;
 ino = ip->i_number;
 vgone(*vpp);
 vput(*vpp);
 error = VFS_VGET(ap->a_dvp->v_mount, ino, LK_EXCLUSIVE, vpp);
 if (error) {
  *vpp = ((void*)0);
  return (error);
 }
 return (0);
}
