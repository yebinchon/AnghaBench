
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_phy {int rf_ver; int rf_rev; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;


 int BWN_TXCTL_PA2DB ;
 int BWN_TXCTL_TXMIX ;

__attribute__((used)) static uint16_t
bwn_phy_g_txctl(struct bwn_mac *mac)
{
 struct bwn_phy *phy = &mac->mac_phy;

 if (phy->rf_ver != 0x2050)
  return (0);
 if (phy->rf_rev == 1)
  return (BWN_TXCTL_PA2DB | BWN_TXCTL_TXMIX);
 if (phy->rf_rev < 6)
  return (BWN_TXCTL_PA2DB);
 if (phy->rf_rev == 8)
  return (BWN_TXCTL_TXMIX);
 return (0);
}
