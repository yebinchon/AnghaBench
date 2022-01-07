
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_PHY_OFDM (int) ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;

__attribute__((used)) static uint16_t
bwn_phy_lp_get_pa_gain(struct bwn_mac *mac)
{

 return BWN_PHY_READ(mac, BWN_PHY_OFDM(0xfb)) & 0x7f;
}
