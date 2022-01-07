
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 unsigned int ADVERTISED_1000baseT_Full ;
 unsigned int ADVERTISED_1000baseT_Half ;
 unsigned int ADVERTISED_Asym_Pause ;
 unsigned int ADVERTISED_Pause ;
 unsigned int ADVERTISE_1000XFULL ;
 unsigned int ADVERTISE_1000XHALF ;
 unsigned int ADVERTISE_1000XPAUSE ;
 unsigned int ADVERTISE_1000XPSE_ASYM ;
 int MII_ADVERTISE ;
 int mdio_write (struct cphy*,int ,int ,unsigned int) ;

int t3_phy_advertise_fiber(struct cphy *phy, unsigned int advert)
{
 unsigned int val = 0;

 if (advert & ADVERTISED_1000baseT_Half)
  val |= ADVERTISE_1000XHALF;
 if (advert & ADVERTISED_1000baseT_Full)
  val |= ADVERTISE_1000XFULL;
 if (advert & ADVERTISED_Pause)
  val |= ADVERTISE_1000XPAUSE;
 if (advert & ADVERTISED_Asym_Pause)
  val |= ADVERTISE_1000XPSE_ASYM;
 return mdio_write(phy, 0, MII_ADVERTISE, val);
}
