
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;
typedef int int32_t ;


 int BWN_NPHY_MIMOCFG ;
 int BWN_NPHY_MIMOCFG_AUTO ;
 int BWN_NPHY_MIMOCFG_GFMIX ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int ) ;

__attribute__((used)) static void bwn_nphy_update_mimo_config(struct bwn_mac *mac, int32_t preamble)
{
 uint16_t mimocfg = BWN_PHY_READ(mac, BWN_NPHY_MIMOCFG);

 mimocfg |= BWN_NPHY_MIMOCFG_AUTO;
 if (preamble == 1)
  mimocfg |= BWN_NPHY_MIMOCFG_GFMIX;
 else
  mimocfg &= ~BWN_NPHY_MIMOCFG_GFMIX;

 BWN_PHY_WRITE(mac, BWN_NPHY_MIMOCFG, mimocfg);
}
