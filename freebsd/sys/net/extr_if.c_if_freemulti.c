
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmultiaddr {scalar_t__ ifma_refcount; int ifma_epoch_ctx; } ;


 int KASSERT (int,char*) ;
 int epoch_call (int ,int *,int ) ;
 int if_destroymulti ;
 int net_epoch_preempt ;

void
if_freemulti(struct ifmultiaddr *ifma)
{
 KASSERT(ifma->ifma_refcount == 0, ("if_freemulti_epoch: refcount %d",
     ifma->ifma_refcount));

 epoch_call(net_epoch_preempt, &ifma->ifma_epoch_ctx, if_destroymulti);
}
