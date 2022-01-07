
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int adapter; } ;


 int A_T3DBG_GPIO_EN ;
 int F_GPIO6_OUT_VAL ;
 int MDIO_DEV_PMA_PMD ;
 int MII_BMCR ;
 int msleep (int) ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int,int) ;
 int t3_phy_reset (struct cphy*,int ,int) ;
 int t3_set_reg_field (int ,int ,int ,int ) ;

__attribute__((used)) static int ael1006_reset(struct cphy *phy, int wait)
{
 int err;

 err = t3_phy_reset(phy, MDIO_DEV_PMA_PMD, wait);
 if (err)
  return err;

 t3_set_reg_field(phy->adapter, A_T3DBG_GPIO_EN,
    F_GPIO6_OUT_VAL, 0);

 msleep(125);

 t3_set_reg_field(phy->adapter, A_T3DBG_GPIO_EN,
    F_GPIO6_OUT_VAL, F_GPIO6_OUT_VAL);

 msleep(125);

 err = t3_phy_reset(phy, MDIO_DEV_PMA_PMD, wait);
 if (err)
  return err;

 msleep(125);

 err = t3_mdio_change_bits(phy, MDIO_DEV_PMA_PMD, MII_BMCR, 1, 1);
 if (err)
  return err;

 msleep(125);

 err = t3_mdio_change_bits(phy, MDIO_DEV_PMA_PMD, MII_BMCR, 1, 0);

 return err;

}
