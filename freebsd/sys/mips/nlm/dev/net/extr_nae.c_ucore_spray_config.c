
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



uint32_t
ucore_spray_config(uint32_t interface, uint32_t ucore_mask, int cmd)
{
 return ((cmd & 0x1) << 31) | ((ucore_mask & 0xffff) << 8) |
     (interface & 0x1f);
}
