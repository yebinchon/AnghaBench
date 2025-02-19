
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_symlink_args {char* a_target; struct vattr* a_vap; struct componentname* a_cnp; struct vnode** a_vpp; struct vnode* a_dvp; } ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_type; } ;
struct componentname {int dummy; } ;


 int MPASS (int) ;
 scalar_t__ VLNK ;
 int tmpfs_alloc_file (struct vnode*,struct vnode**,struct vattr*,struct componentname*,char const*) ;

__attribute__((used)) static int
tmpfs_symlink(struct vop_symlink_args *v)
{
 struct vnode *dvp = v->a_dvp;
 struct vnode **vpp = v->a_vpp;
 struct componentname *cnp = v->a_cnp;
 struct vattr *vap = v->a_vap;
 const char *target = v->a_target;




 vap->va_type = VLNK;


 return tmpfs_alloc_file(dvp, vpp, vap, cnp, target);
}
