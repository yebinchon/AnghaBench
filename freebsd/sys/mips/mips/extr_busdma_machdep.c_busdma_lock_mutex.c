
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
typedef int bus_dma_lock_op_t ;




 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int panic (char*,int) ;

void
busdma_lock_mutex(void *arg, bus_dma_lock_op_t op)
{
 struct mtx *dmtx;

 dmtx = (struct mtx *)arg;
 switch (op) {
 case 129:
  mtx_lock(dmtx);
  break;
 case 128:
  mtx_unlock(dmtx);
  break;
 default:
  panic("Unknown operation 0x%x for busdma_lock_mutex!", op);
 }
}
