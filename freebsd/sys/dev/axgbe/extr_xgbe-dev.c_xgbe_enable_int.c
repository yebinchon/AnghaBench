
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_channel {unsigned int saved_ier; } ;
typedef enum xgbe_int { ____Placeholder_xgbe_int } xgbe_int ;


 int DMA_CH_IER ;
 int FBEE ;
 int RBUE ;
 int RIE ;
 int RSE ;
 int TBUE ;
 int TIE ;
 int TXSE ;
 unsigned int XGMAC_DMA_IOREAD (struct xgbe_channel*,int ) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,unsigned int) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int) ;

__attribute__((used)) static int xgbe_enable_int(struct xgbe_channel *channel,
      enum xgbe_int int_id)
{
 unsigned int dma_ch_ier;

 dma_ch_ier = XGMAC_DMA_IOREAD(channel, DMA_CH_IER);

 switch (int_id) {
 case 130:
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, TIE, 1);
  break;
 case 128:
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, TXSE, 1);
  break;
 case 131:
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, TBUE, 1);
  break;
 case 133:
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, RIE, 1);
  break;
 case 134:
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, RBUE, 1);
  break;
 case 132:
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, RSE, 1);
  break;
 case 129:
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, TIE, 1);
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, RIE, 1);
  break;
 case 135:
  XGMAC_SET_BITS(dma_ch_ier, DMA_CH_IER, FBEE, 1);
  break;
 case 136:
  dma_ch_ier |= channel->saved_ier;
  break;
 default:
  return -1;
 }

 XGMAC_DMA_IOWRITE(channel, DMA_CH_IER, dma_ch_ier);

 return 0;
}
