
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_rename_args {struct vnode* a_tvp; struct vnode* a_fdvp; struct vnode* a_fvp; struct vnode* a_tdvp; } ;
struct vop_generic_args {int dummy; } ;
struct vnode {scalar_t__ v_mount; } ;
struct null_node {int null_flags; } ;


 int EXDEV ;
 int NULLV_DROP ;
 struct null_node* VTONULL (struct vnode*) ;
 int null_bypass (struct vop_generic_args*) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
null_rename(struct vop_rename_args *ap)
{
 struct vnode *tdvp = ap->a_tdvp;
 struct vnode *fvp = ap->a_fvp;
 struct vnode *fdvp = ap->a_fdvp;
 struct vnode *tvp = ap->a_tvp;
 struct null_node *tnn;


 if ((fvp->v_mount != tdvp->v_mount) ||
     (tvp && (fvp->v_mount != tvp->v_mount))) {
  if (tdvp == tvp)
   vrele(tdvp);
  else
   vput(tdvp);
  if (tvp)
   vput(tvp);
  vrele(fdvp);
  vrele(fvp);
  return (EXDEV);
 }

 if (tvp != ((void*)0)) {
  tnn = VTONULL(tvp);
  tnn->null_flags |= NULLV_DROP;
 }
 return (null_bypass((struct vop_generic_args *)ap));
}
