
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_mac {int dummy; } ;
typedef scalar_t__ int16_t ;


 int BWI_PHYR_NRSSI_CTRL ;
 int BWI_PHYR_NRSSI_DATA ;
 int PHY_WRITE (struct bwi_mac*,int ,int ) ;

void
bwi_nrssi_write(struct bwi_mac *mac, uint16_t ofs, int16_t data)
{
 PHY_WRITE(mac, BWI_PHYR_NRSSI_CTRL, ofs);
 PHY_WRITE(mac, BWI_PHYR_NRSSI_DATA, (uint16_t)data);
}
