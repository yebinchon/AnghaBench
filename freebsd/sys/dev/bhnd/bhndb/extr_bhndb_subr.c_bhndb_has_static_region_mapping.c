
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_resources {int dummy; } ;
struct bhndb_region {scalar_t__ size; int * static_regwin; } ;
typedef scalar_t__ bhnd_size_t ;
typedef scalar_t__ bhnd_addr_t ;


 struct bhndb_region* bhndb_find_resource_region (struct bhndb_resources*,scalar_t__,int) ;

bool
bhndb_has_static_region_mapping(struct bhndb_resources *br,
    bhnd_addr_t addr, bhnd_size_t size)
{
 struct bhndb_region *region;
 bhnd_addr_t r_addr;

 r_addr = addr;
 while ((region = bhndb_find_resource_region(br, r_addr, 1)) != ((void*)0)) {

  if (region->static_regwin == ((void*)0))
   return (0);


  r_addr += region->size;


  if (r_addr == addr + size)
   return (1);

 }


 return (0);
}
