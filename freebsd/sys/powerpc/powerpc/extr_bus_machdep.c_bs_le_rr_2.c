
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int * __ppc_ba (int ,int ) ;
 int in16rb (int ) ;
 int powerpc_iomb () ;

__attribute__((used)) static void
bs_le_rr_2(bus_space_handle_t bsh, bus_size_t ofs, uint16_t *addr, size_t cnt)
{
 volatile uint16_t *s = __ppc_ba(bsh, ofs);

 while (cnt--)
  *addr++ = in16rb(s++);
 powerpc_iomb();
}
