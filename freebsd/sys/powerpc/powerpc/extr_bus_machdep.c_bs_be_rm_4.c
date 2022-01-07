
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int __ppc_ba (int ,int ) ;
 int ins32 (int ,int *,size_t) ;

__attribute__((used)) static void
bs_be_rm_4(bus_space_handle_t bsh, bus_size_t ofs, uint32_t *addr, size_t cnt)
{
 ins32(__ppc_ba(bsh, ofs), addr, cnt);
}
