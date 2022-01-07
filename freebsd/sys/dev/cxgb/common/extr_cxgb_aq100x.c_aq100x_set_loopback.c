
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_LOOPBACK ;
 int MDIO_DEV_PMA_PMD ;
 int MII_BMCR ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int ) ;

__attribute__((used)) static int
aq100x_set_loopback(struct cphy *phy, int mmd, int dir, int enable)
{
 return t3_mdio_change_bits(phy, MDIO_DEV_PMA_PMD, MII_BMCR,
       BMCR_LOOPBACK, enable ? BMCR_LOOPBACK : 0);
}
