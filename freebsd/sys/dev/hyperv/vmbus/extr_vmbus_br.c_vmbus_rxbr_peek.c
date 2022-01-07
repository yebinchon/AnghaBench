
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmbus_rxbr {int rxbr_lock; int rxbr_rindex; } ;


 int EAGAIN ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int vmbus_rxbr_avail (struct vmbus_rxbr*) ;
 int vmbus_rxbr_copyfrom (struct vmbus_rxbr*,int ,void*,int) ;

int
vmbus_rxbr_peek(struct vmbus_rxbr *rbr, void *data, int dlen)
{
 mtx_lock_spin(&rbr->rxbr_lock);





 if (vmbus_rxbr_avail(rbr) < dlen + sizeof(uint64_t)) {
  mtx_unlock_spin(&rbr->rxbr_lock);
  return (EAGAIN);
 }
 vmbus_rxbr_copyfrom(rbr, rbr->rxbr_rindex, data, dlen);

 mtx_unlock_spin(&rbr->rxbr_lock);

 return (0);
}
