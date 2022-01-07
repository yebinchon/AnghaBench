
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vmbus_rxbr {scalar_t__ rxbr_dsize; scalar_t__ rxbr_windex; scalar_t__ rxbr_rindex; } ;


 scalar_t__ VMBUS_BR_WAVAIL (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static __inline uint32_t
vmbus_rxbr_avail(const struct vmbus_rxbr *rbr)
{
 uint32_t rindex, windex;


 rindex = rbr->rxbr_rindex;
 windex = rbr->rxbr_windex;

 return (rbr->rxbr_dsize -
     VMBUS_BR_WAVAIL(rindex, windex, rbr->rxbr_dsize));
}
