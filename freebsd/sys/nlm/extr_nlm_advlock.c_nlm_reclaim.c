
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {int a_vp; } ;


 int lf_iteratelocks_vnode (int ,int ,int *) ;
 int nlm_cancel_wait (int ) ;
 int nlm_reclaim_free_lock ;

int
nlm_reclaim(struct vop_reclaim_args *ap)
{

 nlm_cancel_wait(ap->a_vp);
 lf_iteratelocks_vnode(ap->a_vp, nlm_reclaim_free_lock, ((void*)0));
 return (0);
}
