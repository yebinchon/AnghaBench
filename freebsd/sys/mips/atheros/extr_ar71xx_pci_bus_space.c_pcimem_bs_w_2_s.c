
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int writew (int,int ) ;

__attribute__((used)) static void
pcimem_bs_w_2_s(void *t, bus_space_handle_t h, bus_size_t o, uint16_t v)
{

 writew(h + (o &~ 3) + (2 - (o & 3)), v);
}
