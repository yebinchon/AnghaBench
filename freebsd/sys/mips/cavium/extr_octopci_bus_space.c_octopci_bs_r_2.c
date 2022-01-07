
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int rd16 (scalar_t__) ;

uint16_t
octopci_bs_r_2(void *t, bus_space_handle_t handle,
    bus_size_t offset)
{

 return (rd16(handle + offset));
}
