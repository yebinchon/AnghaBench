
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t
sctp_finalize_crc32c(uint32_t crc32c)
{
 uint32_t result;

 uint8_t byte0, byte1, byte2, byte3;



 result = ~crc32c;






 byte0 = result & 0x000000ff;
 byte1 = (result >> 8) & 0x000000ff;
 byte2 = (result >> 16) & 0x000000ff;
 byte3 = (result >> 24) & 0x000000ff;
 crc32c = ((byte0 << 24) | (byte1 << 16) | (byte2 << 8) | byte3);







 return (crc32c);
}
