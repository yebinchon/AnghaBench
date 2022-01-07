
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; struct xgbe_channel* channel; } ;
struct xgbe_channel {int tx_ring; } ;


 int DMA_CH_TCR ;
 int MAC_TCR ;
 int ST ;
 int TE ;
 int XGMAC_DMA_IOWRITE_BITS (struct xgbe_channel*,int ,int ,int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;

__attribute__((used)) static void xgbe_powerup_tx(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;


 channel = pdata->channel;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->tx_ring)
   break;

  XGMAC_DMA_IOWRITE_BITS(channel, DMA_CH_TCR, ST, 1);
 }


 XGMAC_IOWRITE_BITS(pdata, MAC_TCR, TE, 1);
}
