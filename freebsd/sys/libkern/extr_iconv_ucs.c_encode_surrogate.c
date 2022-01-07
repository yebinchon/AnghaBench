
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
encode_surrogate(uint32_t code)
{
 return ((((code - 0x10000) << 6) & 0x3ff0000) |
     ((code - 0x10000) & 0x3ff) | 0xd800dc00);
}
