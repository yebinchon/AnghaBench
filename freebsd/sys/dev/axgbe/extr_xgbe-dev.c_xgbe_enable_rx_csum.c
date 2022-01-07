
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int IPC ;
 int MAC_RCR ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int) ;

__attribute__((used)) static int xgbe_enable_rx_csum(struct xgbe_prv_data *pdata)
{
 XGMAC_IOWRITE_BITS(pdata, MAC_RCR, IPC, 1);

 return 0;
}
