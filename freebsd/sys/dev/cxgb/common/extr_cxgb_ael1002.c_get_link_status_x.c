
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int DUPLEX_FULL ;
 int MDIO_DEV_PCS ;
 int MDIO_DEV_PMA_PMD ;
 int MDIO_DEV_XGXS ;
 int PCS_STAT1_X ;
 int PHY_LINK_DOWN ;
 int PHY_LINK_UP ;
 int PMD_RSD ;
 int SPEED_10000 ;
 int XS_LN_STAT ;
 int mdio_read (struct cphy*,int ,int ,unsigned int*) ;

__attribute__((used)) static int get_link_status_x(struct cphy *phy, int *link_state, int *speed,
        int *duplex, int *fc)
{
 if (link_state) {
  unsigned int stat0, stat1, stat2;
  int err = mdio_read(phy, MDIO_DEV_PMA_PMD, PMD_RSD, &stat0);

  if (!err)
   err = mdio_read(phy, MDIO_DEV_PCS, PCS_STAT1_X, &stat1);
  if (!err)
   err = mdio_read(phy, MDIO_DEV_XGXS, XS_LN_STAT, &stat2);
  if (err)
   return err;
  if ((stat0 & (stat1 >> 12) & (stat2 >> 12)) & 1)
   *link_state = PHY_LINK_UP;
  else
   *link_state = PHY_LINK_DOWN;
 }
 if (speed)
  *speed = SPEED_10000;
 if (duplex)
  *duplex = DUPLEX_FULL;
 return 0;
}
