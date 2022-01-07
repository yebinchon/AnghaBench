
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static __inline uint64_t
_mm_crc32_u64(uint64_t x, uint64_t y)
{
 __asm("crc32q %1,%0" : "+r" (x) : "r" (y));
 return (x);
}
