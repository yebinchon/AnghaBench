
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
crc32c_shift(uint32_t zeros[][256], uint32_t crc)
{

 return (zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
     zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24]);
}
