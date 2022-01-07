
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_TAB_2 (int,int ) ;
 int bwn_phy_lp_set_rxgain (struct bwn_mac*,int ) ;
 int bwn_tab_read (struct bwn_mac*,int ) ;

__attribute__((used)) static void
bwn_phy_lp_set_rxgain_idx(struct bwn_mac *mac, uint16_t idx)
{

 bwn_phy_lp_set_rxgain(mac, bwn_tab_read(mac, BWN_TAB_2(12, idx)));
}
