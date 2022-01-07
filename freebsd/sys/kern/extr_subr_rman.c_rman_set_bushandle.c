
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int r_bushandle; } ;
typedef int bus_space_handle_t ;



void
rman_set_bushandle(struct resource *r, bus_space_handle_t h)
{

 r->r_bushandle = h;
}
