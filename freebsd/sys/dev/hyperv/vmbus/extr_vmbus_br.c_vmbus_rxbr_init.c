
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_rxbr {int rxbr_lock; } ;


 int MTX_SPIN ;
 int mtx_init (int *,char*,int *,int ) ;

void
vmbus_rxbr_init(struct vmbus_rxbr *rbr)
{
 mtx_init(&rbr->rxbr_lock, "vmbus_rxbr", ((void*)0), MTX_SPIN);
}
