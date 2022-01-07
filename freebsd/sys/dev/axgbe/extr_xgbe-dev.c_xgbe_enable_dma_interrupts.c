
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; int per_channel_irq; struct xgbe_channel* channel; } ;
struct xgbe_channel {scalar_t__ rx_ring; scalar_t__ tx_ring; } ;


 int AIE ;
 int DMA_CH_IER ;
 int DMA_CH_SR ;
 int FBEE ;
 int NIE ;
 int RBUE ;
 int RIE ;
 int TIE ;
 unsigned int XGMAC_DMA_IOREAD (struct xgbe_channel*,int ) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,unsigned int) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int) ;

__attribute__((used)) static void xgbe_enable_dma_interrupts(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int dma_ch_isr, dma_ch_ier;
 unsigned int i;

 channel = pdata->channel;
 for (i = 0; i < pdata->channel_count; i++, channel++) {

  dma_ch_isr = XGMAC_DMA_IOREAD(channel, DMA_CH_SR);
  XGMAC_DMA_IOWRITE(channel, DMA_CH_SR, dma_ch_isr);


  dma_ch_ier = 0;






  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, NIE, 1);
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, AIE, 1);
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, FBEE, 1);

  if (channel->tx_ring) {




   if (!pdata->per_channel_irq)
    XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, TIE, 1);
  }
  if (channel->rx_ring) {





   XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, RBUE, 1);
   if (!pdata->per_channel_irq)
    XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, RIE, 1);
  }

  XGMAC_DMA_IOWRITE(channel, DMA_CH_IER, dma_ch_ier);
 }
}
