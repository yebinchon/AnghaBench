
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct netmap_adapter {int dummy; } ;
struct TYPE_3__ {int txirq; int rxirq; } ;
struct TYPE_4__ {TYPE_1__ new; } ;


 int netmap_common_irq (struct netmap_adapter*,int ,int *) ;
 int nm_netmap_on (struct netmap_adapter*) ;
 TYPE_2__ rate_ctx ;
 scalar_t__ unlikely (int) ;

void
netmap_generic_irq(struct netmap_adapter *na, u_int q, u_int *work_done)
{
 if (unlikely(!nm_netmap_on(na)))
  return;

 netmap_common_irq(na, q, work_done);






}
