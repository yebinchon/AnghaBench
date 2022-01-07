
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AEL2020_GPIO_INTR ;
 int MDIO_DEV_PMA_PMD ;
 int mdio_read (struct cphy*,int ,int ,unsigned int*) ;
 int t3_phy_lasi_intr_clear (struct cphy*) ;

__attribute__((used)) static int ael2020_intr_clear(struct cphy *phy)
{
 unsigned int stat;
 int err = mdio_read(phy, MDIO_DEV_PMA_PMD, AEL2020_GPIO_INTR, &stat);
 return err ? err : t3_phy_lasi_intr_clear(phy);
}
