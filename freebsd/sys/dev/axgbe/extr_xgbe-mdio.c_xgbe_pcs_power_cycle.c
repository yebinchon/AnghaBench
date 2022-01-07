
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int dummy; } ;


 int DELAY (int) ;
 int MDIO_CTRL1 ;
 unsigned int MDIO_CTRL1_LPOWER ;
 int MDIO_MMD_PCS ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,unsigned int) ;

__attribute__((used)) static void xgbe_pcs_power_cycle(struct xgbe_prv_data *pdata)
{
 unsigned int reg;

 reg = XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL1);

 reg |= MDIO_CTRL1_LPOWER;
 XMDIO_WRITE(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);

 DELAY(75);

 reg &= ~MDIO_CTRL1_LPOWER;
 XMDIO_WRITE(pdata, MDIO_MMD_PCS, MDIO_CTRL1, reg);
}
