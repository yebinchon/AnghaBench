
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_phy_lp {int plp_antenna; } ;
struct bwn_phy {struct bwn_phy_lp phy_lp; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;


 int BWN_ANT_DEFAULT ;

void
bwn_phy_lp_init_pre(struct bwn_mac *mac)
{
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_phy_lp *plp = &phy->phy_lp;

 plp->plp_antenna = BWN_ANT_DEFAULT;
}
