
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



uint32_t
ether_crc32_le(const uint8_t *buf, size_t len)
{
 static const uint32_t crctab[] = {
  0x00000000, 0x1db71064, 0x3b6e20c8, 0x26d930ac,
  0x76dc4190, 0x6b6b51f4, 0x4db26158, 0x5005713c,
  0xedb88320, 0xf00f9344, 0xd6d6a3e8, 0xcb61b38c,
  0x9b64c2b0, 0x86d3d2d4, 0xa00ae278, 0xbdbdf21c
 };
 size_t i;
 uint32_t crc;

 crc = 0xffffffff;

 for (i = 0; i < len; i++) {
  crc ^= buf[i];
  crc = (crc >> 4) ^ crctab[crc & 0xf];
  crc = (crc >> 4) ^ crctab[crc & 0xf];
 }

 return (crc);
}
