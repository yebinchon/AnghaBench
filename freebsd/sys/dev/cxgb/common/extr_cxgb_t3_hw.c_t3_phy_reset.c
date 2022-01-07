
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int BMCR_PDOWN ;
 unsigned int BMCR_RESET ;
 int MII_BMCR ;
 int mdio_read (struct cphy*,int,int ,unsigned int*) ;
 int msleep (int) ;
 int t3_mdio_change_bits (struct cphy*,int,int ,int ,unsigned int) ;

int t3_phy_reset(struct cphy *phy, int mmd, int wait)
{
 int err;
 unsigned int ctl;

 err = t3_mdio_change_bits(phy, mmd, MII_BMCR, BMCR_PDOWN, BMCR_RESET);
 if (err || !wait)
  return err;

 do {
  err = mdio_read(phy, mmd, MII_BMCR, &ctl);
  if (err)
   return err;
  ctl &= BMCR_RESET;
  if (ctl)
   msleep(1);
 } while (ctl && --wait);

 return ctl ? -1 : 0;
}
