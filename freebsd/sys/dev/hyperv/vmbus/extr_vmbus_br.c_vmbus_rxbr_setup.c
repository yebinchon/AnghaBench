
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_rxbr {int rxbr; } ;


 int vmbus_br_setup (int *,void*,int) ;

void
vmbus_rxbr_setup(struct vmbus_rxbr *rbr, void *buf, int blen)
{
 vmbus_br_setup(&rbr->rxbr, buf, blen);
}
