
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int __ppc_ba (int ,int ) ;
 int ins8 (int ,int *,size_t) ;

__attribute__((used)) static void
bs_le_rm_1(bus_space_handle_t bsh, bus_size_t ofs, uint8_t *addr, size_t cnt)
{
 ins8(__ppc_ba(bsh, ofs), addr, cnt);
}
