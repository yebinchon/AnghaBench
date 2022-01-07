
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_PHYCTL ;
 int BWN_PHYDATA ;
 int BWN_READ_2 (struct bwn_mac*,int ) ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int ) ;

uint16_t
bwn_phy_g_read(struct bwn_mac *mac, uint16_t reg)
{

 BWN_WRITE_2(mac, BWN_PHYCTL, reg);
 return (BWN_READ_2(mac, BWN_PHYDATA));
}
