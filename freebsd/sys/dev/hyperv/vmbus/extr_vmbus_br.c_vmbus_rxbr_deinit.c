
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_rxbr {int rxbr_lock; } ;


 int mtx_destroy (int *) ;

void
vmbus_rxbr_deinit(struct vmbus_rxbr *rbr)
{
 mtx_destroy(&rbr->rxbr_lock);
}
