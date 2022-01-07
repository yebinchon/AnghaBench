
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_epoch_ctx; int if_refcount; } ;


 int epoch_call (int ,int *,int ) ;
 int if_destroy ;
 int net_epoch_preempt ;
 int refcount_release (int *) ;

void
if_rele(struct ifnet *ifp)
{

 if (!refcount_release(&ifp->if_refcount))
  return;
 epoch_call(net_epoch_preempt, &ifp->if_epoch_ctx, if_destroy);
}
