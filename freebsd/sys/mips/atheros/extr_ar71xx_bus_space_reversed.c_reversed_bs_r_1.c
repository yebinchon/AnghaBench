
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int readb (int) ;

__attribute__((used)) static uint8_t
reversed_bs_r_1(void *t, bus_space_handle_t h, bus_size_t o)
{

 return readb(h + (o &~ 3) + (3 - (o & 3)));
}
