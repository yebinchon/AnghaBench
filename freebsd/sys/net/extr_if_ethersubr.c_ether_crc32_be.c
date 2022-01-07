
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ETHER_CRC_POLY_BE ;

uint32_t
ether_crc32_be(const uint8_t *buf, size_t len)
{
 size_t i;
 uint32_t crc, carry;
 int bit;
 uint8_t data;

 crc = 0xffffffff;

 for (i = 0; i < len; i++) {
  for (data = *buf++, bit = 0; bit < 8; bit++, data >>= 1) {
   carry = ((crc & 0x80000000) ? 1 : 0) ^ (data & 0x01);
   crc <<= 1;
   if (carry)
    crc = (crc ^ ETHER_CRC_POLY_BE) | carry;
  }
 }

 return (crc);
}
