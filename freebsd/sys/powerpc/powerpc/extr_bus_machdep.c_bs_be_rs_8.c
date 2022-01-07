
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int * __ppc_ba (int ,int ) ;
 int powerpc_iomb () ;

__attribute__((used)) static uint64_t
bs_be_rs_8(bus_space_handle_t bsh, bus_size_t ofs)
{
 volatile uint64_t *addr;
 uint64_t res;

 addr = __ppc_ba(bsh, ofs);
 res = *addr;
 powerpc_iomb();
 return (res);
}
