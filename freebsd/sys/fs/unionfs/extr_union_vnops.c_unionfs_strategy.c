
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_strategy_args {TYPE_1__* a_bp; int a_vp; } ;
struct vnode {int dummy; } ;
struct unionfs_node {struct vnode* un_lowervp; struct vnode* un_uppervp; } ;
struct TYPE_2__ {scalar_t__ b_iocmd; } ;


 scalar_t__ BIO_WRITE ;
 int KASSERT_UNIONFS_VNODE (int ) ;
 struct vnode* NULLVP ;
 int VOP_STRATEGY (struct vnode*,TYPE_1__*) ;
 struct unionfs_node* VTOUNIONFS (int ) ;
 int panic (char*) ;

__attribute__((used)) static int
unionfs_strategy(struct vop_strategy_args *ap)
{
 struct unionfs_node *unp;
 struct vnode *vp;

 KASSERT_UNIONFS_VNODE(ap->a_vp);

 unp = VTOUNIONFS(ap->a_vp);
 vp = (unp->un_uppervp != NULLVP ? unp->un_uppervp : unp->un_lowervp);
 return (VOP_STRATEGY(vp, ap->a_bp));
}
