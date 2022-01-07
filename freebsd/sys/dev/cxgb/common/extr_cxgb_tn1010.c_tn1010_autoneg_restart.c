
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_ANRESTART ;
 int MDIO_DEV_ANEG ;
 int MII_BMCR ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int ) ;
 int tn1010_power_down (struct cphy*,int ) ;

__attribute__((used)) static int tn1010_autoneg_restart(struct cphy *phy)
{
 int err;

 err = tn1010_power_down(phy, 0);
 if (!err)
  err = t3_mdio_change_bits(phy, MDIO_DEV_ANEG, MII_BMCR, 0,
       BMCR_ANRESTART);
 return err;
}
