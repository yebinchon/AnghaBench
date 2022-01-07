
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmbus_txbr {int txbr_dsize; int txbr_windex; int txbr_rindex; } ;


 int VMBUS_BR_WAVAIL (int ,int ,int ) ;

__attribute__((used)) static __inline uint32_t
vmbus_txbr_avail(const struct vmbus_txbr *tbr)
{
 uint32_t rindex, windex;


 rindex = tbr->txbr_rindex;
 windex = tbr->txbr_windex;

 return VMBUS_BR_WAVAIL(rindex, windex, tbr->txbr_dsize);
}
