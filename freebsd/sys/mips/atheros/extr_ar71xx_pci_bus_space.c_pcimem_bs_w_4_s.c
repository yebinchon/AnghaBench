
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int htole32 (int ) ;
 int writel (scalar_t__,int ) ;

__attribute__((used)) static void
pcimem_bs_w_4_s(void *t, bus_space_handle_t h, bus_size_t o, uint32_t v)
{

 writel(h + o, htole32(v));
}
