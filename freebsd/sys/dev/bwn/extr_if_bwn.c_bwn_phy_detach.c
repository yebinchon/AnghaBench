
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* detach ) (struct bwn_mac*) ;} ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int stub1 (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_phy_detach(struct bwn_mac *mac)
{

 if (mac->mac_phy.detach != ((void*)0))
  mac->mac_phy.detach(mac);
}
