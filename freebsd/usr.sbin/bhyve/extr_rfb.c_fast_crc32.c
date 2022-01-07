
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static __inline uint32_t
fast_crc32(void *buf, int len, uint32_t crcval)
{
 uint32_t q = len / sizeof(uint32_t);
 uint32_t *p = (uint32_t *)buf;

 while (q--) {
  asm volatile (
   ".byte 0xf2, 0xf, 0x38, 0xf1, 0xf1;"
   :"=S" (crcval)
   :"0" (crcval), "c" (*p)
  );
  p++;
 }

 return (crcval);
}
