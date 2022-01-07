
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_rxbr {int rxbr_imask; } ;


 int mb () ;

void
vmbus_rxbr_intr_mask(struct vmbus_rxbr *rbr)
{
 rbr->rxbr_imask = 1;
 mb();
}
