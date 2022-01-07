
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
__attribute__((used)) static u8
ixl_convert_sysctl_aq_link_speed(u8 speeds, bool to_aq)
{
 static u16 speedmap[6] = {
  (133 | (0x1 << 8)),
  (131 | (0x2 << 8)),
  (132 | (0x4 << 8)),
  (130 | (0x8 << 8)),
  (129 | (0x10 << 8)),
  (128 | (0x20 << 8))
 };
 u8 retval = 0;

 for (int i = 0; i < 6; i++) {
  if (to_aq)
   retval |= (speeds & (speedmap[i] >> 8)) ? (speedmap[i] & 0xff) : 0;
  else
   retval |= (speeds & speedmap[i]) ? (speedmap[i] >> 8) : 0;
 }

 return (retval);
}
