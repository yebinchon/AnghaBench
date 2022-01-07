
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* task_60s ) (struct bwn_mac*) ;} ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_TXPWR_IGNORE_TIME ;
 int bwn_phy_txpower_check (struct bwn_mac*,int ) ;
 int stub1 (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_task_60s(struct bwn_mac *mac)
{

 if (mac->mac_phy.task_60s)
  mac->mac_phy.task_60s(mac);
 bwn_phy_txpower_check(mac, BWN_TXPWR_IGNORE_TIME);
}
