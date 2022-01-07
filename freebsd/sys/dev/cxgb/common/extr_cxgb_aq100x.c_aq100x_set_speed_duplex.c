
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_RESET ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int DUPLEX_FULL ;
 int EINVAL ;
 int MDIO_DEV_ANEG ;
 int MDIO_DEV_PMA_PMD ;
 int MII_BMCR ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int,int) ;

__attribute__((used)) static int
aq100x_set_speed_duplex(struct cphy *phy, int speed, int duplex)
{
 int err, set;

 if (speed == SPEED_100)
  set = BMCR_SPEED100;
 else if (speed == SPEED_1000)
  set = BMCR_SPEED1000;
 else if (speed == SPEED_10000)
  set = BMCR_SPEED1000 | BMCR_SPEED100;
 else
  return (EINVAL);

 if (duplex != DUPLEX_FULL)
  return (EINVAL);

 err = t3_mdio_change_bits(phy, MDIO_DEV_ANEG, MII_BMCR,
     BMCR_RESET | BMCR_ANENABLE | BMCR_ANRESTART, 0);
 if (err)
  return (err);

 err = t3_mdio_change_bits(phy, MDIO_DEV_PMA_PMD, MII_BMCR,
     BMCR_SPEED1000 | BMCR_SPEED100, set);
 if (err)
  return (err);

 return (0);
}
