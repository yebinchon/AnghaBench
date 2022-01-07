
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int bwn_nphy_tables_init_rev0 (struct bwn_mac*) ;
 int bwn_nphy_tables_init_rev16 (struct bwn_mac*) ;
 int bwn_nphy_tables_init_rev3 (struct bwn_mac*) ;
 int bwn_nphy_tables_init_rev7 (struct bwn_mac*) ;

void bwn_nphy_tables_init(struct bwn_mac *mac)
{
 if (mac->mac_phy.rev >= 16)
  bwn_nphy_tables_init_rev16(mac);
 else if (mac->mac_phy.rev >= 7)
  bwn_nphy_tables_init_rev7(mac);
 else if (mac->mac_phy.rev >= 3)
  bwn_nphy_tables_init_rev3(mac);
 else
  bwn_nphy_tables_init_rev0(mac);
}
