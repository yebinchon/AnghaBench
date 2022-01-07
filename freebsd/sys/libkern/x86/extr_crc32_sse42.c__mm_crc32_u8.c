
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static __inline uint32_t
_mm_crc32_u8(uint32_t x, uint8_t y)
{







 __asm("crc32b %1,%0" : "+r" (x) : "r" (y));
 return (x);
}
