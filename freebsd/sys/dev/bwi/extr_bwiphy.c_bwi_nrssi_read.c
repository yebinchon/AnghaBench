
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_mac {int dummy; } ;
typedef int int16_t ;


 int BWI_PHYR_NRSSI_CTRL ;
 int BWI_PHYR_NRSSI_DATA ;
 int PHY_READ (struct bwi_mac*,int ) ;
 int PHY_WRITE (struct bwi_mac*,int ,int ) ;

int16_t
bwi_nrssi_read(struct bwi_mac *mac, uint16_t ofs)
{
 PHY_WRITE(mac, BWI_PHYR_NRSSI_CTRL, ofs);
 return (int16_t)PHY_READ(mac, BWI_PHYR_NRSSI_DATA);
}
