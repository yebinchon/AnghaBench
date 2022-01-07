
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u_int8_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;



u_int8_t
rmi_pci_bus_space_read_stream_1(void *t, bus_space_handle_t handle,
    bus_size_t offset)
{

 return *((volatile u_int8_t *)(handle + offset));
}
