
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_PHY_AFE_DDFS ;
 int BWN_PHY_AFE_DDFS_INCR_INIT ;
 int BWN_PHY_AFE_DDFS_POINTER_INIT ;
 int BWN_PHY_LP_PHY_CTL ;
 int BWN_PHY_MASK (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int) ;
 int bwn_phy_lp_ddfs_turnoff (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_phy_lp_ddfs_turnon(struct bwn_mac *mac, int i_on, int q_on,
    int incr1, int incr2, int scale_idx)
{

 bwn_phy_lp_ddfs_turnoff(mac);
 BWN_PHY_MASK(mac, BWN_PHY_AFE_DDFS_POINTER_INIT, 0xff80);
 BWN_PHY_MASK(mac, BWN_PHY_AFE_DDFS_POINTER_INIT, 0x80ff);
 BWN_PHY_SETMASK(mac, BWN_PHY_AFE_DDFS_INCR_INIT, 0xff80, incr1);
 BWN_PHY_SETMASK(mac, BWN_PHY_AFE_DDFS_INCR_INIT, 0x80ff, incr2 << 8);
 BWN_PHY_SETMASK(mac, BWN_PHY_AFE_DDFS, 0xfff7, i_on << 3);
 BWN_PHY_SETMASK(mac, BWN_PHY_AFE_DDFS, 0xffef, q_on << 4);
 BWN_PHY_SETMASK(mac, BWN_PHY_AFE_DDFS, 0xff9f, scale_idx << 5);
 BWN_PHY_MASK(mac, BWN_PHY_AFE_DDFS, 0xfffb);
 BWN_PHY_SET(mac, BWN_PHY_AFE_DDFS, 0x2);
 BWN_PHY_SET(mac, BWN_PHY_LP_PHY_CTL, 0x20);
}
