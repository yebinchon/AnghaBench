
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int readw (int) ;

__attribute__((used)) static uint16_t
pcimem_bs_r_2_s(void *t, bus_space_handle_t h, bus_size_t o)
{

 return readw(h + (o &~ 3) + (2 - (o & 3)));
}
