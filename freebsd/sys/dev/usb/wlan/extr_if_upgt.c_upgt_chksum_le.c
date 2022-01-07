
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int htole32 (int) ;

__attribute__((used)) static uint32_t
upgt_chksum_le(const uint32_t *buf, size_t size)
{
 size_t i;
 uint32_t crc = 0;

 for (i = 0; i < size; i += sizeof(uint32_t)) {
  crc = htole32(crc ^ *buf++);
  crc = htole32((crc >> 5) ^ (crc << 3));
 }

 return (crc);
}
