
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int ifa_epoch_ctx; int ifa_refcnt; } ;


 int epoch_call (int ,int *,int ) ;
 int ifa_destroy ;
 int net_epoch_preempt ;
 scalar_t__ refcount_release (int *) ;

void
ifa_free(struct ifaddr *ifa)
{

 if (refcount_release(&ifa->ifa_refcnt))
  epoch_call(net_epoch_preempt, &ifa->ifa_epoch_ctx, ifa_destroy);
}
