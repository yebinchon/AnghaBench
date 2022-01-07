
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_access_args {int a_cred; int a_accmode; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;
struct vattr {int va_gid; int va_uid; int va_mode; } ;


 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int vaccess (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
mqfs_access(struct vop_access_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vattr vattr;
 int error;

 error = VOP_GETATTR(vp, &vattr, ap->a_cred);
 if (error)
  return (error);
 error = vaccess(vp->v_type, vattr.va_mode, vattr.va_uid,
     vattr.va_gid, ap->a_accmode, ap->a_cred, ((void*)0));
 return (error);
}
