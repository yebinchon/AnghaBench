
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int rd8 (scalar_t__) ;

uint8_t
octopci_bs_r_1(void *t, bus_space_handle_t handle,
    bus_size_t offset)
{

 return (rd8(handle + offset));
}
