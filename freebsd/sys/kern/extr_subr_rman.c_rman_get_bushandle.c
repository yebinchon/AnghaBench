
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int r_bushandle; } ;
typedef int bus_space_handle_t ;



bus_space_handle_t
rman_get_bushandle(struct resource *r)
{

 return (r->r_bushandle);
}
