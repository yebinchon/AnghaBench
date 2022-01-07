
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
calc_hi20_imm(uint32_t value)
{




 if ((value & 0x800) != 0)
  value += 0x1000;
 return (value & ~0xfff);
}
