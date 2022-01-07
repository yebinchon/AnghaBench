
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int BLEN_256 ;
 int DMA_SBMR ;
 int EAME ;
 int UNDEF ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;

__attribute__((used)) static void xgbe_config_dma_bus(struct xgbe_prv_data *pdata)
{

 XGMAC_IOWRITE_BITS(pdata, DMA_SBMR, EAME, 1);


 XGMAC_IOWRITE_BITS(pdata, DMA_SBMR, UNDEF, 1);
 XGMAC_IOWRITE_BITS(pdata, DMA_SBMR, BLEN_256, 1);
}
