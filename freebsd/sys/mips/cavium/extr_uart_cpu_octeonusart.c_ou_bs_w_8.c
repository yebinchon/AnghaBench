
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int cvmx_write64_uint64 (scalar_t__,int ) ;

__attribute__((used)) static void
ou_bs_w_8(void *t, bus_space_handle_t bsh, bus_size_t offset, uint64_t value)
{

 cvmx_write64_uint64(bsh + offset, value);
}
