
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_hw_if {int (* enable_int ) (struct xgbe_channel*,int) ;} ;
struct xgbe_prv_data {unsigned int channel_count; struct xgbe_channel* channel; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {scalar_t__ rx_ring; scalar_t__ tx_ring; } ;
typedef enum xgbe_int { ____Placeholder_xgbe_int } xgbe_int ;


 int XGMAC_INT_DMA_CH_SR_RI ;
 int XGMAC_INT_DMA_CH_SR_TI ;
 int XGMAC_INT_DMA_CH_SR_TI_RI ;
 int stub1 (struct xgbe_channel*,int) ;

__attribute__((used)) static void xgbe_enable_rx_tx_ints(struct xgbe_prv_data *pdata)
{
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_channel *channel;
 enum xgbe_int int_id;
 unsigned int i;

 channel = pdata->channel;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (channel->tx_ring && channel->rx_ring)
   int_id = XGMAC_INT_DMA_CH_SR_TI_RI;
  else if (channel->tx_ring)
   int_id = XGMAC_INT_DMA_CH_SR_TI;
  else if (channel->rx_ring)
   int_id = XGMAC_INT_DMA_CH_SR_RI;
  else
   continue;

  hw_if->enable_int(channel, int_id);
 }
}
