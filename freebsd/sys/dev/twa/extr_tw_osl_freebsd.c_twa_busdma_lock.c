
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
typedef int bus_dma_lock_op_t ;
typedef int TW_VOID ;




 int mtx_lock_spin (struct mtx*) ;
 int mtx_unlock_spin (struct mtx*) ;
 int panic (char*,int) ;

TW_VOID
twa_busdma_lock(TW_VOID *lock_arg, bus_dma_lock_op_t op)
{
 struct mtx *lock;

 lock = (struct mtx *)lock_arg;
 switch (op) {
 case 129:
  mtx_lock_spin(lock);
  break;

 case 128:
  mtx_unlock_spin(lock);
  break;

 default:
  panic("Unknown operation 0x%x for twa_busdma_lock!", op);
 }
}
