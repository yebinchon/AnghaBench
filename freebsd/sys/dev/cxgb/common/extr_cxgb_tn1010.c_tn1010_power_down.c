
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_PDOWN ;
 int MDIO_DEV_PMA_PMD ;
 int MII_BMCR ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int ) ;

__attribute__((used)) static int tn1010_power_down(struct cphy *phy, int enable)
{
 return t3_mdio_change_bits(phy, MDIO_DEV_PMA_PMD, MII_BMCR,
       BMCR_PDOWN, enable ? BMCR_PDOWN : 0);
}
