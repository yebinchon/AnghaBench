
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
emu_rate_to_linearpitch(uint32_t rate)
{
 rate = (rate << 8) / 375;
 return ((rate >> 1) + (rate & 1));
}
