
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_q_cnt; int tx_q_cnt; } ;
struct xgbe_prv_data {TYPE_1__ hw_feat; } ;


 int MTL_Q_IER ;
 int MTL_Q_ISR ;
 unsigned int XGMAC_MTL_IOREAD (struct xgbe_prv_data*,unsigned int,int ) ;
 int XGMAC_MTL_IOWRITE (struct xgbe_prv_data*,unsigned int,int ,unsigned int) ;
 unsigned int max (int ,int ) ;

__attribute__((used)) static void xgbe_enable_mtl_interrupts(struct xgbe_prv_data *pdata)
{
 unsigned int mtl_q_isr;
 unsigned int q_count, i;

 q_count = max(pdata->hw_feat.tx_q_cnt, pdata->hw_feat.rx_q_cnt);
 for (i = 0; i < q_count; i++) {

  mtl_q_isr = XGMAC_MTL_IOREAD(pdata, i, MTL_Q_ISR);
  XGMAC_MTL_IOWRITE(pdata, i, MTL_Q_ISR, mtl_q_isr);


  XGMAC_MTL_IOWRITE(pdata, i, MTL_Q_IER, 0);
 }
}
