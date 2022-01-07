
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {int r_vaddr; int r_size; int r_bushandle; int r_bustag; } ;
struct resource {int dummy; } ;


 int rman_get_bushandle (struct resource*) ;
 int rman_get_bustag (struct resource*) ;
 int rman_get_size (struct resource*) ;
 int rman_get_virtual (struct resource*) ;

void
rman_get_mapping(struct resource *r, struct resource_map *map)
{

 map->r_bustag = rman_get_bustag(r);
 map->r_bushandle = rman_get_bushandle(r);
 map->r_size = rman_get_size(r);
 map->r_vaddr = rman_get_virtual(r);
}
