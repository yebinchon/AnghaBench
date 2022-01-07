
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_TAB_2 (int ,int) ;
 int bwn_tab_write (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void
bwn_phy_lp_set_bbmult(struct bwn_mac *mac, uint8_t bbmult)
{

 bwn_tab_write(mac, BWN_TAB_2(0, 87), (uint16_t)bbmult << 8);
}
