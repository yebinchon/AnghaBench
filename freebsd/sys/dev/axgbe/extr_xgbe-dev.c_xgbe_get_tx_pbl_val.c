
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int channel; } ;


 int DMA_CH_TCR ;
 int PBL ;
 int XGMAC_DMA_IOREAD_BITS (int ,int ,int ) ;

__attribute__((used)) static int xgbe_get_tx_pbl_val(struct xgbe_prv_data *pdata)
{
 return XGMAC_DMA_IOREAD_BITS(pdata->channel, DMA_CH_TCR, PBL);
}
