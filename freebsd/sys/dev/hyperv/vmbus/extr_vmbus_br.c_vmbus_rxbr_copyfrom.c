
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct vmbus_rxbr {int rxbr_dsize; int * rxbr_data; } ;


 int VMBUS_BR_IDXINC (int,int,int) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static __inline uint32_t
vmbus_rxbr_copyfrom(const struct vmbus_rxbr *rbr, uint32_t rindex,
    void *dst0, int cplen)
{
 uint8_t *dst = dst0;
 const uint8_t *br_data = rbr->rxbr_data;
 uint32_t br_dsize = rbr->rxbr_dsize;

 if (cplen > br_dsize - rindex) {
  uint32_t fraglen = br_dsize - rindex;


  memcpy(dst, br_data + rindex, fraglen);
  memcpy(dst + fraglen, br_data, cplen - fraglen);
 } else {
  memcpy(dst, br_data + rindex, cplen);
 }
 return VMBUS_BR_IDXINC(rindex, cplen, br_dsize);
}
