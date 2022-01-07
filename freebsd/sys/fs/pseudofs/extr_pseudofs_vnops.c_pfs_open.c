
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_open_args {int a_mode; struct vnode* a_vp; } ;
struct vnode {struct pfs_vdata* v_data; } ;
struct pfs_vdata {struct pfs_node* pvd_pn; } ;
struct pfs_node {int pn_name; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 int FREAD ;
 int FWRITE ;
 int O_EXLOCK ;
 int O_SHLOCK ;
 int PFS_RD ;
 int PFS_RETURN (int ) ;
 int PFS_TRACE (char*) ;
 int PFS_WR ;
 int pfs_assert_not_owned (struct pfs_node*) ;

__attribute__((used)) static int
pfs_open(struct vop_open_args *va)
{
 struct vnode *vn = va->a_vp;
 struct pfs_vdata *pvd = vn->v_data;
 struct pfs_node *pn = pvd->pvd_pn;
 int mode = va->a_mode;

 PFS_TRACE(("%s (mode 0x%x)", pn->pn_name, mode));
 pfs_assert_not_owned(pn);


 if (((mode & FREAD) && !(mode & PFS_RD)) ||
     ((mode & FWRITE) && !(mode & PFS_WR)))
  PFS_RETURN (EPERM);


 if ((mode & O_SHLOCK) || (mode & O_EXLOCK))
  PFS_RETURN (EOPNOTSUPP);

 PFS_RETURN (0);
}
