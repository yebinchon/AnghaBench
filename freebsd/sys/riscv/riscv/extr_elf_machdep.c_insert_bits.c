
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int gen_bitmask (int,int) ;

__attribute__((used)) static uint32_t
insert_bits(uint32_t d, uint32_t s, int msb, int lsb)
{
 uint32_t mask;

 mask = gen_bitmask(msb, lsb);

 d &= ~mask;

 s <<= lsb;
 s &= mask;

 return (d | s);
}
