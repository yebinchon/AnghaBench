
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int __ppc_ba (int ,int ) ;
 int outsw (int ,int const*,int ) ;

__attribute__((used)) static void
bs_be_wm_2(bus_space_handle_t bsh, bus_size_t ofs, const uint16_t *addr,
    bus_size_t cnt)
{
 outsw(__ppc_ba(bsh, ofs), addr, cnt);
}
