
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_create_args {struct vattr* a_vap; struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_type; } ;
struct componentname {int cn_flags; } ;


 int MAKEENTRY ;
 int MPASS (int) ;
 scalar_t__ VREG ;
 scalar_t__ VSOCK ;
 int cache_enter (struct vnode*,struct vnode*,struct componentname*) ;
 int tmpfs_alloc_file (struct vnode*,struct vnode**,struct vattr*,struct componentname*,int *) ;
 scalar_t__ tmpfs_use_nc (struct vnode*) ;

__attribute__((used)) static int
tmpfs_create(struct vop_create_args *v)
{
 struct vnode *dvp = v->a_dvp;
 struct vnode **vpp = v->a_vpp;
 struct componentname *cnp = v->a_cnp;
 struct vattr *vap = v->a_vap;
 int error;

 MPASS(vap->va_type == VREG || vap->va_type == VSOCK);

 error = tmpfs_alloc_file(dvp, vpp, vap, cnp, ((void*)0));
 if (error == 0 && (cnp->cn_flags & MAKEENTRY) != 0 && tmpfs_use_nc(dvp))
  cache_enter(dvp, *vpp, cnp);
 return (error);
}
