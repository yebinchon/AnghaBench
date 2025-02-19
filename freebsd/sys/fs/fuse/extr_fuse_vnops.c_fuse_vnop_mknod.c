
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_mknod_args {struct vattr* a_vap; struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct componentname {int dummy; } ;


 int ENXIO ;
 int fuse_internal_mknod (struct vnode*,struct vnode**,struct componentname*,struct vattr*) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;

__attribute__((used)) static int
fuse_vnop_mknod(struct vop_mknod_args *ap)
{

 struct vnode *dvp = ap->a_dvp;
 struct vnode **vpp = ap->a_vpp;
 struct componentname *cnp = ap->a_cnp;
 struct vattr *vap = ap->a_vap;

 if (fuse_isdeadfs(dvp))
  return ENXIO;

 return fuse_internal_mknod(dvp, vpp, cnp, vap);
}
