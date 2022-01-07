
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct vmbus_rxbr {scalar_t__ rxbr_dsize; scalar_t__ rxbr_rindex; int rxbr_lock; } ;


 int EAGAIN ;
 int KASSERT (int,char*) ;
 scalar_t__ VMBUS_BR_IDXINC (scalar_t__,int,scalar_t__) ;
 int __compiler_membar () ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ vmbus_rxbr_avail (struct vmbus_rxbr*) ;
 scalar_t__ vmbus_rxbr_copyfrom (struct vmbus_rxbr*,scalar_t__,void*,int) ;

int
vmbus_rxbr_read(struct vmbus_rxbr *rbr, void *data, int dlen, uint32_t skip)
{
 uint32_t rindex, br_dsize = rbr->rxbr_dsize;

 KASSERT(dlen + skip > 0, ("invalid dlen %d, offset %u", dlen, skip));

 mtx_lock_spin(&rbr->rxbr_lock);

 if (vmbus_rxbr_avail(rbr) < dlen + skip + sizeof(uint64_t)) {
  mtx_unlock_spin(&rbr->rxbr_lock);
  return (EAGAIN);
 }




 rindex = VMBUS_BR_IDXINC(rbr->rxbr_rindex, skip, br_dsize);
 rindex = vmbus_rxbr_copyfrom(rbr, rindex, data, dlen);




 rindex = VMBUS_BR_IDXINC(rindex, sizeof(uint64_t), br_dsize);




 __compiler_membar();
 rbr->rxbr_rindex = rindex;

 mtx_unlock_spin(&rbr->rxbr_lock);

 return (0);
}
