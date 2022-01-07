
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int version; } ;
struct xgbe_prv_data {unsigned int tx_q_count; TYPE_1__ hw_feat; } ;


 int DELAY (int) ;
 int EBUSY ;
 int FTQ ;
 int MAC_VR ;
 int MTL_Q_TQOMR ;
 int SNPSVER ;
 int XGMAC_GET_BITS (int ,int ,int ) ;
 scalar_t__ XGMAC_MTL_IOREAD_BITS (struct xgbe_prv_data*,unsigned int,int ,int ) ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,int) ;

__attribute__((used)) static int xgbe_flush_tx_queues(struct xgbe_prv_data *pdata)
{
 unsigned int i, count;

 if (XGMAC_GET_BITS(pdata->hw_feat.version, MAC_VR, SNPSVER) < 0x21)
  return 0;

 for (i = 0; i < pdata->tx_q_count; i++)
  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_Q_TQOMR, FTQ, 1);


 for (i = 0; i < pdata->tx_q_count; i++) {
  count = 2000;
  while (--count && XGMAC_MTL_IOREAD_BITS(pdata, i,
       MTL_Q_TQOMR, FTQ))
   DELAY(500);

  if (!count)
   return -EBUSY;
 }

 return 0;
}
