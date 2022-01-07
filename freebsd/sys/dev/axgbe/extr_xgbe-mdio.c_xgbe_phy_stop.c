
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link; } ;
struct xgbe_prv_data {TYPE_1__ phy; int an_irq_tag; int an_irq_res; int dev; } ;


 int MDIO_AN_INTMASK ;
 int MDIO_MMD_AN ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int xgbe_disable_an (struct xgbe_prv_data*) ;
 int xgbe_phy_adjust_link (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_stop(struct xgbe_prv_data *pdata)
{


 xgbe_disable_an(pdata);


 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK, 0);

 bus_teardown_intr(pdata->dev, pdata->an_irq_res, pdata->an_irq_tag);

 pdata->phy.link = 0;

 xgbe_phy_adjust_link(pdata);
}
