
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int an_irq_tag; int an_irq_res; int dev; } ;


 int EINVAL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MDIO_AN_INTMASK ;
 int MDIO_MMD_AN ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,int) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct xgbe_prv_data*,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int xgbe_an_init (struct xgbe_prv_data*) ;
 int xgbe_an_isr ;
 int xgbe_gmii_2500_mode (struct xgbe_prv_data*) ;
 int xgbe_gmii_mode (struct xgbe_prv_data*) ;
 int xgbe_phy_config_aneg (struct xgbe_prv_data*) ;
 scalar_t__ xgbe_use_gmii_2500_mode (struct xgbe_prv_data*) ;
 scalar_t__ xgbe_use_gmii_mode (struct xgbe_prv_data*) ;
 scalar_t__ xgbe_use_xgmii_mode (struct xgbe_prv_data*) ;
 int xgbe_xgmii_mode (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_phy_start(struct xgbe_prv_data *pdata)
{
 int ret;

 ret = bus_setup_intr(pdata->dev, pdata->an_irq_res,
     INTR_MPSAFE | INTR_TYPE_NET, ((void*)0), xgbe_an_isr, pdata,
     &pdata->an_irq_tag);
 if (ret) {
  return -ret;
 }




 if (xgbe_use_xgmii_mode(pdata)) {
  xgbe_xgmii_mode(pdata);
 } else if (xgbe_use_gmii_mode(pdata)) {
  xgbe_gmii_mode(pdata);
 } else if (xgbe_use_gmii_2500_mode(pdata)) {
  xgbe_gmii_2500_mode(pdata);
 } else {
  ret = -EINVAL;
  goto err_irq;
 }


 xgbe_an_init(pdata);


 XMDIO_WRITE(pdata, MDIO_MMD_AN, MDIO_AN_INTMASK, 0x07);

 return xgbe_phy_config_aneg(pdata);

err_irq:
 bus_teardown_intr(pdata->dev, pdata->an_irq_res, pdata->an_irq_tag);

 return ret;
}
