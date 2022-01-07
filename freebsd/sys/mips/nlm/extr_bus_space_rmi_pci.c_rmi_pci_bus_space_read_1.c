
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;



__attribute__((used)) static u_int8_t
rmi_pci_bus_space_read_1(void *tag, bus_space_handle_t handle,
    bus_size_t offset)
{
 return (u_int8_t) (*(volatile u_int8_t *)(handle + offset));
}
