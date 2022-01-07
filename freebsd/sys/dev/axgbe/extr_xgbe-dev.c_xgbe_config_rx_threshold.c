
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int rx_q_count; } ;


 int MTL_Q_RQOMR ;
 int RTC ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,unsigned int) ;

__attribute__((used)) static int xgbe_config_rx_threshold(struct xgbe_prv_data *pdata,
        unsigned int val)
{
 unsigned int i;

 for (i = 0; i < pdata->rx_q_count; i++)
  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_Q_RQOMR, RTC, val);

 return 0;
}
