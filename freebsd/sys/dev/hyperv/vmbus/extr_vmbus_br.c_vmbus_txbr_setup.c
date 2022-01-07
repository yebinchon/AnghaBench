
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_txbr {int txbr; } ;


 int vmbus_br_setup (int *,void*,int) ;

void
vmbus_txbr_setup(struct vmbus_txbr *tbr, void *buf, int blen)
{
 vmbus_br_setup(&tbr->txbr, buf, blen);
}
