
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int advertising; } ;
struct xgbe_prv_data {TYPE_1__ phy; } ;


 int ADVERTISED_10000baseKR_Full ;
 int ADVERTISED_1000baseKX_Full ;
 int ADVERTISED_2500baseX_Full ;
 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 scalar_t__ MDIO_AN_ADVERTISE ;
 int MDIO_MMD_AN ;
 unsigned int XGBE_XNP_NP_EXCHANGE ;
 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,scalar_t__) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,scalar_t__,unsigned int) ;

__attribute__((used)) static void xgbe_an_init(struct xgbe_prv_data *pdata)
{
 unsigned int reg;


 reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 2);
 reg &= ~0xc000;

 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 2, reg);


 reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 1);
 if (pdata->phy.advertising & ADVERTISED_10000baseKR_Full)
  reg |= 0x80;
 else
  reg &= ~0x80;

 if ((pdata->phy.advertising & ADVERTISED_1000baseKX_Full) ||
     (pdata->phy.advertising & ADVERTISED_2500baseX_Full))
  reg |= 0x20;
 else
  reg &= ~0x20;

 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 1, reg);


 reg = XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE);
 if (pdata->phy.advertising & ADVERTISED_Pause)
  reg |= 0x400;
 else
  reg &= ~0x400;

 if (pdata->phy.advertising & ADVERTISED_Asym_Pause)
  reg |= 0x800;
 else
  reg &= ~0x800;


 reg &= ~XGBE_XNP_NP_EXCHANGE;

 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE, reg);
}
