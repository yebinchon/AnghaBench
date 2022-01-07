
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int rd8 (scalar_t__) ;

void
generic_bs_rm_1(void *t, bus_space_handle_t bsh,
    bus_size_t offset, uint8_t *addr, size_t count)
{

 while (count--)
  *addr++ = rd8(bsh + offset);
}
