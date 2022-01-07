
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int rx_q_count; } ;


 int MTL_Q_RQFCR ;
 int RFA ;
 int RFD ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,int) ;

__attribute__((used)) static void xgbe_config_flow_control_threshold(struct xgbe_prv_data *pdata)
{
 unsigned int i;

 for (i = 0; i < pdata->rx_q_count; i++) {

  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_Q_RQFCR, RFA, 2);


  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_Q_RQFCR, RFD, 4);
 }
}
