
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int addr; int adapter; } ;


 int BMCR_PDOWN ;
 unsigned int BMCR_RESET ;
 int CH_WARN (int ,char*,int ,unsigned int) ;
 int ETIMEDOUT ;
 int MDIO_DEV_PMA_PMD ;
 int MII_BMCR ;
 int mdio_read (struct cphy*,int ,int ,unsigned int*) ;
 int msleep (int) ;
 int t3_mdio_change_bits (struct cphy*,int ,int ,int ,int ) ;

__attribute__((used)) static int
aq100x_power_down(struct cphy *phy, int off)
{
 int err, wait = 500;
 unsigned int v;

 err = t3_mdio_change_bits(phy, MDIO_DEV_PMA_PMD, MII_BMCR, BMCR_PDOWN,
     off ? BMCR_PDOWN : 0);
 if (err || off)
  return (err);

 msleep(300);
 do {
  err = mdio_read(phy, MDIO_DEV_PMA_PMD, MII_BMCR, &v);
  if (err)
   return (err);
  v &= BMCR_RESET;
  if (v)
   msleep(10);
 } while (v && --wait);
 if (v) {
  CH_WARN(phy->adapter, "PHY%d: power-up timed out (0x%x).\n",
      phy->addr, v);
  return (ETIMEDOUT);
 }

 return (0);
}
