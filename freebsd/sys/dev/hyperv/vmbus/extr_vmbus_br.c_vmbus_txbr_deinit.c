
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_txbr {int txbr_lock; } ;


 int mtx_destroy (int *) ;

void
vmbus_txbr_deinit(struct vmbus_txbr *tbr)
{
 mtx_destroy(&tbr->txbr_lock);
}
