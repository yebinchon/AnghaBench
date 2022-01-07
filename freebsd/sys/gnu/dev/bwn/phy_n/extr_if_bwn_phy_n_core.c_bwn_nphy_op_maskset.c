
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_PHYCTL ;
 int BWN_PHYDATA ;
 int BWN_WRITE_2_F (struct bwn_mac*,int ,int ) ;
 int BWN_WRITE_SETMASK2 (struct bwn_mac*,int ,int ,int ) ;
 int check_phyreg (struct bwn_mac*,int ) ;

void
bwn_nphy_op_maskset(struct bwn_mac *mac, uint16_t reg, uint16_t mask,
    uint16_t set)
{
 check_phyreg(mac, reg);
 BWN_WRITE_2_F(mac, BWN_PHYCTL, reg);
 BWN_WRITE_SETMASK2(mac, BWN_PHYDATA, mask, set);
}
