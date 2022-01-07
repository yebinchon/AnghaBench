
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_phy_n_sfo_cfg {int phy_bw6; int phy_bw5; int phy_bw4; int phy_bw3; int phy_bw2; int phy_bw1a; } ;
struct bwn_mac {int dummy; } ;


 int BWN_NPHY_BW1A ;
 int BWN_NPHY_BW2 ;
 int BWN_NPHY_BW3 ;
 int BWN_NPHY_BW4 ;
 int BWN_NPHY_BW5 ;
 int BWN_NPHY_BW6 ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int ) ;

__attribute__((used)) static void bwn_chantab_phy_upload(struct bwn_mac *mac,
       const struct bwn_phy_n_sfo_cfg *e)
{
 BWN_PHY_WRITE(mac, BWN_NPHY_BW1A, e->phy_bw1a);
 BWN_PHY_WRITE(mac, BWN_NPHY_BW2, e->phy_bw2);
 BWN_PHY_WRITE(mac, BWN_NPHY_BW3, e->phy_bw3);
 BWN_PHY_WRITE(mac, BWN_NPHY_BW4, e->phy_bw4);
 BWN_PHY_WRITE(mac, BWN_NPHY_BW5, e->phy_bw5);
 BWN_PHY_WRITE(mac, BWN_NPHY_BW6, e->phy_bw6);
}
