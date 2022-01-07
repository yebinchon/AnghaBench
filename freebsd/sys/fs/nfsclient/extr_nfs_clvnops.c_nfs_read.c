
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_read_args {int a_cred; int a_ioflag; int a_uio; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;


 int EISDIR ;
 int EOPNOTSUPP ;


 int ncl_bioread (struct vnode*,int ,int ,int ) ;

__attribute__((used)) static int
nfs_read(struct vop_read_args *ap)
{
 struct vnode *vp = ap->a_vp;

 switch (vp->v_type) {
 case 128:
  return (ncl_bioread(vp, ap->a_uio, ap->a_ioflag, ap->a_cred));
 case 129:
  return (EISDIR);
 default:
  return (EOPNOTSUPP);
 }
}
