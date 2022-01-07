
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_getpages_args {int a_rahead; int a_rbehind; int a_count; int a_m; int a_vp; } ;


 int vnode_pager_generic_getpages (int ,int ,int ,int ,int ,int *,int *) ;

int
vnode_pager_local_getpages(struct vop_getpages_args *ap)
{

 return (vnode_pager_generic_getpages(ap->a_vp, ap->a_m, ap->a_count,
     ap->a_rbehind, ap->a_rahead, ((void*)0), ((void*)0)));
}
