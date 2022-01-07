
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int r_bustag; } ;
typedef int bus_space_tag_t ;



void
rman_set_bustag(struct resource *r, bus_space_tag_t t)
{

 r->r_bustag = t;
}
