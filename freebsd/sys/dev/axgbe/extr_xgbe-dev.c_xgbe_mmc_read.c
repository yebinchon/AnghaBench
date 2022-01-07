
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xgbe_prv_data {int dummy; } ;






 int XGMAC_IOREAD (struct xgbe_prv_data*,unsigned int) ;

__attribute__((used)) static u64 xgbe_mmc_read(struct xgbe_prv_data *pdata, unsigned int reg_lo)
{
 bool read_hi;
 u64 val;

 switch (reg_lo) {

 case 129:
 case 128:
 case 131:
 case 130:
  read_hi = 1;
  break;

 default:
  read_hi = 0;
 }

 val = XGMAC_IOREAD(pdata, reg_lo);

 if (read_hi)
  val |= ((u64)XGMAC_IOREAD(pdata, reg_lo + 4) << 32);

 return val;
}
