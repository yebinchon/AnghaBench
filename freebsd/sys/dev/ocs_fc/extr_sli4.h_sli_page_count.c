
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
sli_page_count(size_t bytes, uint32_t page_size)
{
 uint32_t mask = page_size - 1;
 uint32_t shift = 0;

 switch (page_size) {
 case 4096:
  shift = 12;
  break;
 case 8192:
  shift = 13;
  break;
 case 16384:
  shift = 14;
  break;
 case 32768:
  shift = 15;
  break;
 case 65536:
  shift = 16;
  break;
 default:
  return 0;
 }

 return (bytes + mask) >> shift;
}
