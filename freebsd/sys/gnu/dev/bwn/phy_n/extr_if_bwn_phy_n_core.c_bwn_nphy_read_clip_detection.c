
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_NPHY_C1_CLIP1THRES ;
 int BWN_NPHY_C2_CLIP1THRES ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;

__attribute__((used)) static void bwn_nphy_read_clip_detection(struct bwn_mac *mac, uint16_t *clip_st)
{
 clip_st[0] = BWN_PHY_READ(mac, BWN_NPHY_C1_CLIP1THRES);
 clip_st[1] = BWN_PHY_READ(mac, BWN_NPHY_C2_CLIP1THRES);
}
