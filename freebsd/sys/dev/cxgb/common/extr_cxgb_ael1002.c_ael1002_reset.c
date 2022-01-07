
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int modtype; } ;


 int AEL1002_LB_EN ;
 int AEL1002_PWR_DOWN_HI ;
 int AEL1002_PWR_DOWN_LO ;
 int AEL1002_XFI_EQL ;
 int AEL100X_TX_CONFIG1 ;
 int MDIO_DEV_PMA_PMD ;
 int ael1002_get_module_type (struct cphy*,int) ;
 int ael1002_power_down (struct cphy*,int ) ;
 int mdio_write (struct cphy*,int ,int ,int) ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int) ;

__attribute__((used)) static int ael1002_reset(struct cphy *phy, int wait)
{
 int err;

 if ((err = ael1002_power_down(phy, 0)) ||
     (err = mdio_write(phy, MDIO_DEV_PMA_PMD, AEL100X_TX_CONFIG1, 1)) ||
     (err = mdio_write(phy, MDIO_DEV_PMA_PMD, AEL1002_PWR_DOWN_HI, 0)) ||
     (err = mdio_write(phy, MDIO_DEV_PMA_PMD, AEL1002_PWR_DOWN_LO, 0)) ||
     (err = mdio_write(phy, MDIO_DEV_PMA_PMD, AEL1002_XFI_EQL, 0x18)) ||
     (err = t3_mdio_change_bits(phy, MDIO_DEV_PMA_PMD, AEL1002_LB_EN,
           0, 1 << 5)))
  return err;

 err = ael1002_get_module_type(phy, 300);
 if (err >= 0)
  phy->modtype = err;

 return 0;
}
