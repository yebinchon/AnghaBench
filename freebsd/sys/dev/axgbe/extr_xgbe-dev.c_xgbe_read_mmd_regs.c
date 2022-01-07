
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int mdio_mmd; int xpcs_lock; } ;


 int MII_ADDR_C45 ;
 int PCS_MMD_SELECT ;
 int XPCS_IOREAD (struct xgbe_prv_data*,unsigned int) ;
 int XPCS_IOWRITE (struct xgbe_prv_data*,int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int xgbe_read_mmd_regs(struct xgbe_prv_data *pdata, int prtad,
         int mmd_reg)
{
 unsigned long flags;
 unsigned int mmd_address;
 int mmd_data;

 if (mmd_reg & MII_ADDR_C45)
  mmd_address = mmd_reg & ~MII_ADDR_C45;
 else
  mmd_address = (pdata->mdio_mmd << 16) | (mmd_reg & 0xffff);
 spin_lock_irqsave(&pdata->xpcs_lock, flags);
 XPCS_IOWRITE(pdata, PCS_MMD_SELECT << 2, mmd_address >> 8);
 mmd_data = XPCS_IOREAD(pdata, (mmd_address & 0xff) << 2);
 spin_unlock_irqrestore(&pdata->xpcs_lock, flags);

 return mmd_data;
}
