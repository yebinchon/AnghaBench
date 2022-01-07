
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int wr8 (scalar_t__,int ) ;

void
octopci_bs_w_1(void *t, bus_space_handle_t bsh,
    bus_size_t offset, uint8_t value)
{

 wr8(bsh + offset, value);
}
