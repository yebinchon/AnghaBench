
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {struct autofs_node* v_data; } ;
struct autofs_node {int an_vnode_lock; int * an_vnode; } ;


 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
autofs_reclaim(struct vop_reclaim_args *ap)
{
 struct vnode *vp;
 struct autofs_node *anp;

 vp = ap->a_vp;
 anp = vp->v_data;





 sx_xlock(&anp->an_vnode_lock);
 anp->an_vnode = ((void*)0);
 vp->v_data = ((void*)0);
 sx_xunlock(&anp->an_vnode_lock);

 return (0);
}
