
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_readlink_args {int a_cred; int a_uio; struct vnode* a_vp; } ;
struct vnode {TYPE_1__* v_mount; } ;
struct inode {int i_size; scalar_t__ i_shortlink; } ;
struct TYPE_2__ {int mnt_maxsymlinklen; } ;


 int VOP_READ (struct vnode*,int ,int ,int ) ;
 struct inode* VTOI (struct vnode*) ;
 int uiomove (char*,int,int ) ;

__attribute__((used)) static int
ext2_readlink(struct vop_readlink_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct inode *ip = VTOI(vp);
 int isize;

 isize = ip->i_size;
 if (isize < vp->v_mount->mnt_maxsymlinklen) {
  uiomove((char *)ip->i_shortlink, isize, ap->a_uio);
  return (0);
 }
 return (VOP_READ(vp, ap->a_uio, 0, ap->a_cred));
}
