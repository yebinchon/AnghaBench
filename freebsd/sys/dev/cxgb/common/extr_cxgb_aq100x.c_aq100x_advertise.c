
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 unsigned int ADVERTISED_10000baseT_Full ;
 unsigned int ADVERTISED_1000baseT_Full ;
 unsigned int ADVERTISED_1000baseT_Half ;
 unsigned int ADVERTISED_100baseT_Full ;
 unsigned int ADVERTISED_100baseT_Half ;
 unsigned int ADVERTISED_Asym_Pause ;
 unsigned int ADVERTISED_Pause ;
 unsigned int ADVERTISE_100FULL ;
 unsigned int ADVERTISE_100HALF ;
 unsigned int ADVERTISE_PAUSE_ASYM ;
 unsigned int ADVERTISE_PAUSE_CAP ;
 unsigned int ADV_10G_FULL ;
 unsigned int ADV_1G_FULL ;
 unsigned int ADV_1G_HALF ;
 int AQ_100M_CTRL ;
 int AQ_10G_CTRL ;
 int AQ_1G_CTRL ;
 int MDIO_DEV_ANEG ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int,unsigned int) ;

__attribute__((used)) static int
aq100x_advertise(struct cphy *phy, unsigned int advertise_map)
{
 unsigned int adv;
 int err;


 adv = 0;
 if (advertise_map & ADVERTISED_10000baseT_Full)
  adv |= ADV_10G_FULL;
 err = t3_mdio_change_bits(phy, MDIO_DEV_ANEG, AQ_10G_CTRL,
      ADV_10G_FULL, adv);
 if (err)
  return (err);


 adv = 0;
 if (advertise_map & ADVERTISED_1000baseT_Full)
  adv |= ADV_1G_FULL;
 if (advertise_map & ADVERTISED_1000baseT_Half)
  adv |= ADV_1G_HALF;
 err = t3_mdio_change_bits(phy, MDIO_DEV_ANEG, AQ_1G_CTRL,
      ADV_1G_FULL | ADV_1G_HALF, adv);
 if (err)
  return (err);


 adv = 0;
 if (advertise_map & ADVERTISED_100baseT_Half)
  adv |= ADVERTISE_100HALF;
 if (advertise_map & ADVERTISED_100baseT_Full)
  adv |= ADVERTISE_100FULL;
 if (advertise_map & ADVERTISED_Pause)
  adv |= ADVERTISE_PAUSE_CAP;
 if (advertise_map & ADVERTISED_Asym_Pause)
  adv |= ADVERTISE_PAUSE_ASYM;
 err = t3_mdio_change_bits(phy, MDIO_DEV_ANEG, AQ_100M_CTRL, 0xfe0, adv);

 return (err);
}
