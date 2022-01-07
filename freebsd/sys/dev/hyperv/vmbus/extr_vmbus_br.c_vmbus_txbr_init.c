
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_txbr {int txbr_lock; } ;


 int MTX_SPIN ;
 int mtx_init (int *,char*,int *,int ) ;

void
vmbus_txbr_init(struct vmbus_txbr *tbr)
{
 mtx_init(&tbr->txbr_lock, "vmbus_txbr", ((void*)0), MTX_SPIN);
}
