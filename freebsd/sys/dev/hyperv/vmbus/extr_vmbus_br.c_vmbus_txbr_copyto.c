
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct vmbus_txbr {scalar_t__ txbr_dsize; int * txbr_data; } ;


 scalar_t__ VMBUS_BR_IDXINC (scalar_t__,scalar_t__,scalar_t__) ;
 int memcpy (int *,int const*,scalar_t__) ;

__attribute__((used)) static __inline uint32_t
vmbus_txbr_copyto(const struct vmbus_txbr *tbr, uint32_t windex,
    const void *src0, uint32_t cplen)
{
 const uint8_t *src = src0;
 uint8_t *br_data = tbr->txbr_data;
 uint32_t br_dsize = tbr->txbr_dsize;

 if (cplen > br_dsize - windex) {
  uint32_t fraglen = br_dsize - windex;


  memcpy(br_data + windex, src, fraglen);
  memcpy(br_data, src + fraglen, cplen - fraglen);
 } else {
  memcpy(br_data + windex, src, cplen);
 }
 return VMBUS_BR_IDXINC(windex, cplen, br_dsize);
}
