
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_ring_data {int rdata_paddr; } ;
struct TYPE_2__ {scalar_t__ xmit_more; } ;
struct xgbe_ring {TYPE_1__ tx; int cur; } ;
struct xgbe_channel {int dummy; } ;


 int DMA_CH_TDTR_LO ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,int ) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,int ) ;
 int lower_32_bits (int ) ;

__attribute__((used)) static void xgbe_tx_start_xmit(struct xgbe_channel *channel,
          struct xgbe_ring *ring)
{
 struct xgbe_ring_data *rdata;



 rdata = XGBE_GET_DESC_DATA(ring, ring->cur);
 XGMAC_DMA_IOWRITE(channel, DMA_CH_TDTR_LO,
     lower_32_bits(rdata->rdata_paddr));

 ring->tx.xmit_more = 0;
}
