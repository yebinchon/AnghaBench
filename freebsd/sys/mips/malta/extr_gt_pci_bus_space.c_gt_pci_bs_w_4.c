
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int wr32 (scalar_t__,int ) ;

void
gt_pci_bs_w_4(void *t, bus_space_handle_t bsh,
    bus_size_t offset, uint32_t value)
{

 wr32(bsh + offset, value);
}
