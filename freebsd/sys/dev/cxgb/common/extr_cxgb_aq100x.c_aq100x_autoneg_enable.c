
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_RESET ;
 int MDIO_DEV_ANEG ;
 int MII_BMCR ;
 int aq100x_power_down (struct cphy*,int ) ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int) ;

__attribute__((used)) static int
aq100x_autoneg_enable(struct cphy *phy)
{
 int err;

 err = aq100x_power_down(phy, 0);
 if (!err)
  err = t3_mdio_change_bits(phy, MDIO_DEV_ANEG, MII_BMCR,
      BMCR_RESET, BMCR_ANENABLE | BMCR_ANRESTART);

 return (err);
}
