
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_PHYCTL ;
 int BWN_PHYDATA ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int ) ;

void
bwn_phy_n_write(struct bwn_mac *mac, uint16_t reg, uint16_t value)
{

 BWN_WRITE_2(mac, BWN_PHYCTL, reg);
 BWN_WRITE_2(mac, BWN_PHYDATA, value);
}
