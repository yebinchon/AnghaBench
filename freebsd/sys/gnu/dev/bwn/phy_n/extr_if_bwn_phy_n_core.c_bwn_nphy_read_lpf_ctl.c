
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_NTAB16 (int,int) ;
 scalar_t__ bwn_is_40mhz (struct bwn_mac*) ;
 int bwn_ntab_read (struct bwn_mac*,int ) ;

__attribute__((used)) static uint16_t bwn_nphy_read_lpf_ctl(struct bwn_mac *mac, uint16_t offset)
{
 if (!offset)
  offset = bwn_is_40mhz(mac) ? 0x159 : 0x154;
 return bwn_ntab_read(mac, BWN_NTAB16(7, offset)) & 0x7;
}
