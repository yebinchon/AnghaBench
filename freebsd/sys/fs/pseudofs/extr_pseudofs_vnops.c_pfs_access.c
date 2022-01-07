
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_access_args {int a_cred; int a_accmode; struct vnode* a_vp; } ;
struct vnode {int v_type; struct pfs_vdata* v_data; } ;
struct vattr {int va_gid; int va_uid; int va_mode; } ;
struct pfs_vdata {TYPE_1__* pvd_pn; } ;
struct TYPE_2__ {int pn_name; } ;


 int PFS_RETURN (int) ;
 int PFS_TRACE (char*) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int vaccess (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
pfs_access(struct vop_access_args *va)
{
 struct vnode *vn = va->a_vp;
 struct pfs_vdata *pvd = vn->v_data;
 struct vattr vattr;
 int error;

 PFS_TRACE(("%s", pvd->pvd_pn->pn_name));
 (void)pvd;

 error = VOP_GETATTR(vn, &vattr, va->a_cred);
 if (error)
  PFS_RETURN (error);
 error = vaccess(vn->v_type, vattr.va_mode, vattr.va_uid,
     vattr.va_gid, va->a_accmode, va->a_cred, ((void*)0));
 PFS_RETURN (error);
}
