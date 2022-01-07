
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_data {int rdata_paddr; } ;
struct xgbe_ring {int cur; int rdesc_count; } ;
struct xgbe_channel {struct xgbe_ring* tx_ring; } ;


 int DBGPR (char*) ;
 int DMA_CH_TDLR_HI ;
 int DMA_CH_TDLR_LO ;
 int DMA_CH_TDRLR ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,int) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int xgbe_tx_desc_reset (struct xgbe_ring_data*) ;

__attribute__((used)) static void xgbe_tx_desc_init(struct xgbe_channel *channel)
{
 struct xgbe_ring *ring = channel->tx_ring;
 struct xgbe_ring_data *rdata;
 int i;
 int start_index = ring->cur;

 DBGPR("-->tx_desc_init\n");


 for (i = 0; i < ring->rdesc_count; i++) {
  rdata = XGBE_GET_DESC_DATA(ring, i);


  xgbe_tx_desc_reset(rdata);
 }


 XGMAC_DMA_IOWRITE(channel, DMA_CH_TDRLR, ring->rdesc_count - 1);


 rdata = XGBE_GET_DESC_DATA(ring, start_index);
 XGMAC_DMA_IOWRITE(channel, DMA_CH_TDLR_HI,
     upper_32_bits(rdata->rdata_paddr));
 XGMAC_DMA_IOWRITE(channel, DMA_CH_TDLR_LO,
     lower_32_bits(rdata->rdata_paddr));

 DBGPR("<--tx_desc_init\n");
}
