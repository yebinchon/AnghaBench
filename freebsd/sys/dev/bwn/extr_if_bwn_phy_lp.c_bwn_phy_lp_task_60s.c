
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int bwn_phy_lp_calib (struct bwn_mac*) ;

void
bwn_phy_lp_task_60s(struct bwn_mac *mac)
{

 bwn_phy_lp_calib(mac);
}
