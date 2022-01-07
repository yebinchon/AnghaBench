
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_PHY0 ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int) ;

void
bwn_phy_switch_analog(struct bwn_mac *mac, int on)
{

 BWN_WRITE_2(mac, BWN_PHY0, on ? 0 : 0xf4);
}
