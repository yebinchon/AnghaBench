
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int axdomain; int awcache; int arcache; } ;


 int DMA_AXIARCR ;
 int DMA_AXIAWCR ;
 int DRC ;
 int DRD ;
 int DWC ;
 int DWD ;
 int RHC ;
 int RHD ;
 int RPC ;
 int RPD ;
 int TDC ;
 int TDD ;
 int TEC ;
 int TED ;
 int THC ;
 int THD ;
 int XGMAC_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int ) ;

__attribute__((used)) static void xgbe_config_dma_cache(struct xgbe_prv_data *pdata)
{
 unsigned int arcache, awcache;

 arcache = 0;
 XGMAC_SET_BITS(arcache, DMA_AXIARCR, DRC, pdata->arcache);
 XGMAC_SET_BITS(arcache, DMA_AXIARCR, DRD, pdata->axdomain);
 XGMAC_SET_BITS(arcache, DMA_AXIARCR, TEC, pdata->arcache);
 XGMAC_SET_BITS(arcache, DMA_AXIARCR, TED, pdata->axdomain);
 XGMAC_SET_BITS(arcache, DMA_AXIARCR, THC, pdata->arcache);
 XGMAC_SET_BITS(arcache, DMA_AXIARCR, THD, pdata->axdomain);
 XGMAC_IOWRITE(pdata, DMA_AXIARCR, arcache);

 awcache = 0;
 XGMAC_SET_BITS(awcache, DMA_AXIAWCR, DWC, pdata->awcache);
 XGMAC_SET_BITS(awcache, DMA_AXIAWCR, DWD, pdata->axdomain);
 XGMAC_SET_BITS(awcache, DMA_AXIAWCR, RPC, pdata->awcache);
 XGMAC_SET_BITS(awcache, DMA_AXIAWCR, RPD, pdata->axdomain);
 XGMAC_SET_BITS(awcache, DMA_AXIAWCR, RHC, pdata->awcache);
 XGMAC_SET_BITS(awcache, DMA_AXIAWCR, RHD, pdata->axdomain);
 XGMAC_SET_BITS(awcache, DMA_AXIAWCR, TDC, pdata->awcache);
 XGMAC_SET_BITS(awcache, DMA_AXIAWCR, TDD, pdata->axdomain);
 XGMAC_IOWRITE(pdata, DMA_AXIAWCR, awcache);
}
