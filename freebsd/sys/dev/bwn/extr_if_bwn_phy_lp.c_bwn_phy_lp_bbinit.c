
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int bwn_phy_lp_bbinit_r01 (struct bwn_mac*) ;
 int bwn_phy_lp_bbinit_r2 (struct bwn_mac*) ;
 int bwn_phy_lp_tblinit (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_phy_lp_bbinit(struct bwn_mac *mac)
{

 bwn_phy_lp_tblinit(mac);
 if (mac->mac_phy.rev >= 2)
  bwn_phy_lp_bbinit_r2(mac);
 else
  bwn_phy_lp_bbinit_r01(mac);
}
