
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_PHY_AFE_DDFS ;
 int BWN_PHY_LP_PHY_CTL ;
 int BWN_PHY_MASK (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void
bwn_phy_lp_ddfs_turnoff(struct bwn_mac *mac)
{

 BWN_PHY_MASK(mac, BWN_PHY_AFE_DDFS, 0xfffd);
 BWN_PHY_MASK(mac, BWN_PHY_LP_PHY_CTL, 0xffdf);
}
