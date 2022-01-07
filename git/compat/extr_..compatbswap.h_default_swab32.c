
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t default_swab32(uint32_t val)
{
 return (((val & 0xff000000) >> 24) |
  ((val & 0x00ff0000) >> 8) |
  ((val & 0x0000ff00) << 8) |
  ((val & 0x000000ff) << 24));
}
