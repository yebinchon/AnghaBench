
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int channel_count; int pblx8; struct xgbe_channel* channel; } ;
struct xgbe_channel {int dummy; } ;


 int DMA_CH_CR ;
 int PBLX8 ;
 int XGMAC_DMA_IOWRITE_BITS (struct xgbe_channel*,int ,int ,int ) ;

__attribute__((used)) static int xgbe_config_pblx8(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 unsigned int i;

 channel = pdata->channel;
 for (i = 0; i < pdata->channel_count; i++, channel++)
  XGMAC_DMA_IOWRITE_BITS(channel, DMA_CH_CR, PBLX8,
           pdata->pblx8);

 return 0;
}
