
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_NPHY_C1_CLIP1THRES ;
 int BWN_NPHY_C2_CLIP1THRES ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int const) ;

__attribute__((used)) static void bwn_nphy_write_clip_detection(struct bwn_mac *mac,
       const uint16_t *clip_st)
{
 BWN_PHY_WRITE(mac, BWN_NPHY_C1_CLIP1THRES, clip_st[0]);
 BWN_PHY_WRITE(mac, BWN_NPHY_C2_CLIP1THRES, clip_st[1]);
}
