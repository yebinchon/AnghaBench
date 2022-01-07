
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_readlink_args {int a_cred; int a_uio; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;


 int EINVAL ;
 scalar_t__ VLNK ;
 int ncl_bioread (struct vnode*,int ,int ,int ) ;

__attribute__((used)) static int
nfs_readlink(struct vop_readlink_args *ap)
{
 struct vnode *vp = ap->a_vp;

 if (vp->v_type != VLNK)
  return (EINVAL);
 return (ncl_bioread(vp, ap->a_uio, 0, ap->a_cred));
}
