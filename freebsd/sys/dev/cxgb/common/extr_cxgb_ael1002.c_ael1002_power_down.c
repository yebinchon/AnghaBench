
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AEL100X_TX_DISABLE ;
 int BMCR_PDOWN ;
 int MDIO_DEV_PMA_PMD ;
 int MII_BMCR ;
 int mdio_write (struct cphy*,int ,int ,int) ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int ) ;

__attribute__((used)) static int ael1002_power_down(struct cphy *phy, int enable)
{
 int err;

 err = mdio_write(phy, MDIO_DEV_PMA_PMD, AEL100X_TX_DISABLE, !!enable);
 if (!err)
  err = t3_mdio_change_bits(phy, MDIO_DEV_PMA_PMD, MII_BMCR,
       BMCR_PDOWN, enable ? BMCR_PDOWN : 0);
 return err;
}
