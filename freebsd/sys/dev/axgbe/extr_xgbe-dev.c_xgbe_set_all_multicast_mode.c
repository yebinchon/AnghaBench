
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int MAC_PFR ;
 int PM ;
 unsigned int XGMAC_IOREAD_BITS (struct xgbe_prv_data*,int ,int ) ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,unsigned int) ;

__attribute__((used)) static int xgbe_set_all_multicast_mode(struct xgbe_prv_data *pdata,
           unsigned int enable)
{
 unsigned int val = enable ? 1 : 0;

 if (XGMAC_IOREAD_BITS(pdata, MAC_PFR, PM) == val)
  return 0;

 XGMAC_IOWRITE_BITS(pdata, MAC_PFR, PM, val);

 return 0;
}
