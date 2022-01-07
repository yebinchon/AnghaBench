
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u_int32_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;



__attribute__((used)) static u_int32_t
rmi_bus_space_read_stream_4(void *t, bus_space_handle_t handle,
    bus_size_t offset)
{
 return (*(volatile u_int32_t *)(handle + offset));
}
