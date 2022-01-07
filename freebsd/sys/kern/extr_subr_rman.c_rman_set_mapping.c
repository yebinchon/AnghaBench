
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {scalar_t__ r_size; int r_vaddr; int r_bushandle; int r_bustag; } ;
struct resource {int dummy; } ;


 int KASSERT (int,char*) ;
 scalar_t__ rman_get_size (struct resource*) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_bustag (struct resource*,int ) ;
 int rman_set_virtual (struct resource*,int ) ;

void
rman_set_mapping(struct resource *r, struct resource_map *map)
{

 KASSERT(rman_get_size(r) == map->r_size,
     ("rman_set_mapping: size mismatch"));
 rman_set_bustag(r, map->r_bustag);
 rman_set_bushandle(r, map->r_bushandle);
 rman_set_virtual(r, map->r_vaddr);
}
