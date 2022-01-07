
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MAC_TCR ;
 int SS ;
 scalar_t__ XGMAC_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;

__attribute__((used)) static int xgbe_set_xgmii_speed(struct xgbe_prv_data *pdata)
{
 if (XGMAC_IOREAD_BITS(pdata, MAC_TCR, SS) == 0)
  return 0;

 XGMAC_IOWRITE_BITS(pdata, MAC_TCR, SS, 0);

 return 0;
}
