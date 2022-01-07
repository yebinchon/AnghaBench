
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int wr16 (scalar_t__,int ) ;

void
generic_bs_w_2(void *t, bus_space_handle_t bsh,
    bus_size_t offset, uint16_t value)
{

 wr16(bsh + offset, value);
}
