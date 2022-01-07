
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_hw_if {int (* config_tx_coalesce ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int tx_frames; int tx_usecs; struct xgbe_hw_if hw_if; } ;


 int DBGPR (char*) ;
 int XGMAC_INIT_DMA_TX_FRAMES ;
 int XGMAC_INIT_DMA_TX_USECS ;
 int stub1 (struct xgbe_prv_data*) ;

void xgbe_init_tx_coalesce(struct xgbe_prv_data *pdata)
{
 struct xgbe_hw_if *hw_if = &pdata->hw_if;

 DBGPR("-->xgbe_init_tx_coalesce\n");

 pdata->tx_usecs = XGMAC_INIT_DMA_TX_USECS;
 pdata->tx_frames = XGMAC_INIT_DMA_TX_FRAMES;

 hw_if->config_tx_coalesce(pdata);

 DBGPR("<--xgbe_init_tx_coalesce\n");
}
