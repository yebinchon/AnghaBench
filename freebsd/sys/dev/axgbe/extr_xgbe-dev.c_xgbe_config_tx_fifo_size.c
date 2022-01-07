
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_fifo_size; } ;
struct xgbe_prv_data {unsigned int tx_q_count; TYPE_1__ hw_feat; } ;


 int MTL_Q_TQOMR ;
 int TQS ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,unsigned int) ;
 unsigned int xgbe_calculate_per_queue_fifo (int ,unsigned int) ;

__attribute__((used)) static void xgbe_config_tx_fifo_size(struct xgbe_prv_data *pdata)
{
 unsigned int fifo_size;
 unsigned int i;

 fifo_size = xgbe_calculate_per_queue_fifo(pdata->hw_feat.tx_fifo_size,
        pdata->tx_q_count);

 for (i = 0; i < pdata->tx_q_count; i++)
  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_Q_TQOMR, TQS, fifo_size);
}
