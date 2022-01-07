
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int rd32 (scalar_t__) ;

uint32_t
octopci_bs_r_4(void *t, bus_space_handle_t handle,
    bus_size_t offset)
{

 return (rd32(handle + offset));
}
