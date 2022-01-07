
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* exit ) (struct bwn_mac*) ;int (* rf_onoff ) (struct bwn_mac*,int ) ;} ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int stub1 (struct bwn_mac*,int ) ;
 int stub2 (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_phy_exit(struct bwn_mac *mac)
{

 mac->mac_phy.rf_onoff(mac, 0);
 if (mac->mac_phy.exit != ((void*)0))
  mac->mac_phy.exit(mac);
}
