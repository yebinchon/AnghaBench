
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static __inline uint16_t
bitswap4(uint16_t val)
{
 uint16_t ret;

 ret = (val & 0x8) >> 3;
 ret |= (val & 0x4) >> 1;
 ret |= (val & 0x2) << 1;
 ret |= (val & 0x1) << 3;
 return ret;
}
