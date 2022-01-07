
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bwn_mac {int dummy; } ;


 int BWN_TAB_2 (int ,int) ;
 int bwn_tab_read (struct bwn_mac*,int ) ;

__attribute__((used)) static uint8_t
bwn_phy_lp_get_bbmult(struct bwn_mac *mac)
{

 return (bwn_tab_read(mac, BWN_TAB_2(0, 87)) & 0xff00) >> 8;
}
