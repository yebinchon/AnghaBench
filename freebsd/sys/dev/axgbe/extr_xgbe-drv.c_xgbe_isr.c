
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_buffer_unavailable; } ;
struct xgbe_hw_if {int (* rx_mmc_int ) (struct xgbe_prv_data*) ;int (* tx_mmc_int ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {unsigned int channel_count; int restart_work; TYPE_1__ ext_stats; int per_channel_irq; struct xgbe_channel* channel; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {int dummy; } ;


 int DMA_CH_SR ;
 int DMA_ISR ;
 int FBE ;
 int MACIS ;
 int MAC_ISR ;
 int MMCRXIS ;
 int MMCTXIS ;
 int RBU ;
 int RI ;
 int TI ;
 unsigned int XGMAC_DMA_IOREAD (struct xgbe_channel*,int ) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,unsigned int) ;
 scalar_t__ XGMAC_GET_BITS (unsigned int,int ,int ) ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,int ) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 int xgbe_all_poll (struct xgbe_prv_data*,int) ;

__attribute__((used)) static void xgbe_isr(void *data)
{
 struct xgbe_prv_data *pdata = data;
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_channel *channel;
 unsigned int dma_isr, dma_ch_isr;
 unsigned int mac_isr;
 unsigned int i;





 dma_isr = XGMAC_IOREAD(pdata, DMA_ISR);
 if (!dma_isr)
  return;

 for (i = 0; i < pdata->channel_count; i++) {
  if (!(dma_isr & (1 << i)))
   continue;

  channel = pdata->channel + i;

  dma_ch_isr = XGMAC_DMA_IOREAD(channel, DMA_CH_SR);





  if (!pdata->per_channel_irq &&
      (XGMAC_GET_BITS(dma_ch_isr, DMA_CH_SR, TI) ||
       XGMAC_GET_BITS(dma_ch_isr, DMA_CH_SR, RI))) {
   xgbe_all_poll(pdata, 16);
  }

  if (XGMAC_GET_BITS(dma_ch_isr, DMA_CH_SR, RBU))
   pdata->ext_stats.rx_buffer_unavailable++;


  if (XGMAC_GET_BITS(dma_ch_isr, DMA_CH_SR, FBE))
   taskqueue_enqueue(taskqueue_thread,
       &pdata->restart_work);


  XGMAC_DMA_IOWRITE(channel, DMA_CH_SR, dma_ch_isr);
 }

 if (XGMAC_GET_BITS(dma_isr, DMA_ISR, MACIS)) {
  mac_isr = XGMAC_IOREAD(pdata, MAC_ISR);

  if (XGMAC_GET_BITS(mac_isr, MAC_ISR, MMCTXIS))
   hw_if->tx_mmc_int(pdata);

  if (XGMAC_GET_BITS(mac_isr, MAC_ISR, MMCRXIS))
   hw_if->rx_mmc_int(pdata);
 }
}
