
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int writeb (int,int ) ;

__attribute__((used)) static void
reversed_bs_w_1(void *t, bus_space_handle_t h, bus_size_t o, u_int8_t v)
{

 writeb(h + (o &~ 3) + (3 - (o & 3)), v);
}
