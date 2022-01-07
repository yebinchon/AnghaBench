
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; unsigned int rx_q_count; struct xgbe_channel* channel; } ;
struct xgbe_channel {int rx_ring; } ;


 int ACS ;
 int CST ;
 int DCRCC ;
 int DMA_CH_RCR ;
 int MAC_RCR ;
 int MAC_RQC0R ;
 int RE ;
 int SR ;
 int XGMAC_DMA_IOWRITE_BITS (struct xgbe_channel*,int ,int ,int) ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;

__attribute__((used)) static void xgbe_enable_rx(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int reg_val, i;


 channel = pdata->channel;
 for (i = 0; i < pdata->channel_count; i++, channel++) {
  if (!channel->rx_ring)
   break;

  XGMAC_DMA_IOWRITE_BITS(channel, DMA_CH_RCR, SR, 1);
 }


 reg_val = 0;
 for (i = 0; i < pdata->rx_q_count; i++)
  reg_val |= (0x02 << (i << 1));
 XGMAC_IOWRITE(pdata, MAC_RQC0R, reg_val);


 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, DCRCC, 1);
 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, CST, 1);
 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, ACS, 1);
 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, RE, 1);
}
