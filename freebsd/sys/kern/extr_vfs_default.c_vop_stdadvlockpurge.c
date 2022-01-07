
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_advlockpurge_args {struct vnode* a_vp; } ;
struct vnode {int v_lockf; } ;


 int lf_purgelocks (struct vnode*,int *) ;

int
vop_stdadvlockpurge(struct vop_advlockpurge_args *ap)
{
 struct vnode *vp;

 vp = ap->a_vp;
 lf_purgelocks(vp, &vp->v_lockf);
 return (0);
}
