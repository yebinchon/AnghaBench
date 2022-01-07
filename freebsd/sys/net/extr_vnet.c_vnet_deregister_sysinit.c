
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet_sysinit {int dummy; } ;


 int TAILQ_REMOVE (int *,struct vnet_sysinit*,int ) ;
 int VNET_SYSINIT_WLOCK () ;
 int VNET_SYSINIT_WUNLOCK () ;
 int link ;
 int vnet_constructors ;

void
vnet_deregister_sysinit(void *arg)
{
 struct vnet_sysinit *vs;

 vs = arg;


 VNET_SYSINIT_WLOCK();
 TAILQ_REMOVE(&vnet_constructors, vs, link);
 VNET_SYSINIT_WUNLOCK();
}
