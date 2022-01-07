
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_setattr_args {struct vnode* a_vp; } ;
struct vnode {struct pfs_vdata* v_data; } ;
struct pfs_vdata {struct pfs_node* pvd_pn; } ;
struct pfs_node {int pn_name; } ;


 int PFS_RETURN (int ) ;
 int PFS_TRACE (char*) ;
 int pfs_assert_not_owned (struct pfs_node*) ;

__attribute__((used)) static int
pfs_setattr(struct vop_setattr_args *va)
{
 struct vnode *vn = va->a_vp;
 struct pfs_vdata *pvd = vn->v_data;
 struct pfs_node *pn = pvd->pvd_pn;

 PFS_TRACE(("%s", pn->pn_name));
 pfs_assert_not_owned(pn);


 PFS_RETURN (0);
}
