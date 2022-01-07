
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; int rx_pbl; struct xgbe_channel* channel; } ;
struct xgbe_channel {int rx_ring; } ;


 int DMA_CH_RCR ;
 int PBL ;
 int XGMAC_DMA_IOWRITE_BITS (struct xgbe_channel*,int ,int ,int ) ;

__attribute__((used)) static int xgbe_config_rx_pbl_val(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;

 channel = pdata->channel;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->rx_ring)
   break;

  XGMAC_DMA_IOWRITE_BITS(channel, DMA_CH_RCR, PBL,
           pdata->rx_pbl);
 }

 return 0;
}
