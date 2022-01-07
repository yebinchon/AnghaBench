
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_phy {int rev; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;



__attribute__((used)) static void bwn_nphy_gain_ctl_workarounds_rev7(struct bwn_mac *mac)
{
 struct bwn_phy *phy = &mac->mac_phy;

 switch (phy->rev) {

 }
}
