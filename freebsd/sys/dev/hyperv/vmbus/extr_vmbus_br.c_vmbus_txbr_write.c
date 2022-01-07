
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct vmbus_txbr {scalar_t__ txbr_windex; int txbr_lock; } ;
struct iovec {scalar_t__ iov_len; int* iov_base; } ;
typedef int save_windex ;
typedef int boolean_t ;


 int EAGAIN ;
 int __compiler_membar () ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 scalar_t__ vmbus_txbr_avail (struct vmbus_txbr*) ;
 scalar_t__ vmbus_txbr_copyto (struct vmbus_txbr*,scalar_t__,int*,int) ;
 int vmbus_txbr_need_signal (struct vmbus_txbr*,scalar_t__) ;

int
vmbus_txbr_write(struct vmbus_txbr *tbr, const struct iovec iov[], int iovlen,
    boolean_t *need_sig)
{
 uint32_t old_windex, windex, total;
 uint64_t save_windex;
 int i;

 total = 0;
 for (i = 0; i < iovlen; i++)
  total += iov[i].iov_len;
 total += sizeof(save_windex);

 mtx_lock_spin(&tbr->txbr_lock);
 if (vmbus_txbr_avail(tbr) <= total) {
  mtx_unlock_spin(&tbr->txbr_lock);
  return (EAGAIN);
 }


 old_windex = tbr->txbr_windex;




 windex = old_windex;
 for (i = 0; i < iovlen; i++) {
  windex = vmbus_txbr_copyto(tbr, windex,
      iov[i].iov_base, iov[i].iov_len);
 }




 save_windex = ((uint64_t)old_windex) << 32;
 windex = vmbus_txbr_copyto(tbr, windex, &save_windex,
     sizeof(save_windex));





 __compiler_membar();
 tbr->txbr_windex = windex;

 mtx_unlock_spin(&tbr->txbr_lock);

 *need_sig = vmbus_txbr_need_signal(tbr, old_windex);

 return (0);
}
