
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int cvmx_read64_uint64 (scalar_t__) ;

__attribute__((used)) static uint16_t
ou_bs_r_2(void *t, bus_space_handle_t handle, bus_size_t offset)
{

 return (cvmx_read64_uint64(handle + offset));
}
