
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int bwn_phy_g_init_sub (struct bwn_mac*) ;

int
bwn_phy_g_init(struct bwn_mac *mac)
{

 bwn_phy_g_init_sub(mac);
 return (0);
}
