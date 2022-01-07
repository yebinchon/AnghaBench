
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int ) ;

__attribute__((used)) static int vsc8211_power_down(struct cphy *cphy, int enable)
{
 return t3_mdio_change_bits(cphy, 0, MII_BMCR, BMCR_PDOWN,
       enable ? BMCR_PDOWN : 0);
}
