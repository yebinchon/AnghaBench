
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AEL2005_GPIO_CTRL ;
 int MDIO_DEV_PMA_PMD ;
 int mdio_write (struct cphy*,int ,int ,int) ;
 int t3_phy_lasi_intr_clear (struct cphy*) ;

__attribute__((used)) static int ael2005_intr_clear(struct cphy *phy)
{
 int err = mdio_write(phy, MDIO_DEV_PMA_PMD, AEL2005_GPIO_CTRL, 0xd00);
 return err ? err : t3_phy_lasi_intr_clear(phy);
}
