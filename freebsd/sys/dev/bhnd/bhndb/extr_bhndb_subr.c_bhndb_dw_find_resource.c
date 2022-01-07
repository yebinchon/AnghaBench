
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct bhndb_resources {size_t dwa_count; struct bhndb_dw_alloc* dw_alloc; } ;
struct bhndb_dw_alloc {int dummy; } ;


 int * bhndb_dw_find_resource_entry (struct bhndb_dw_alloc*,struct resource*) ;
 scalar_t__ bhndb_dw_is_free (struct bhndb_resources*,struct bhndb_dw_alloc*) ;

struct bhndb_dw_alloc *
bhndb_dw_find_resource(struct bhndb_resources *br, struct resource *r)
{
 struct bhndb_dw_alloc *dwa;

 for (size_t i = 0; i < br->dwa_count; i++) {
  dwa = &br->dw_alloc[i];


  if (bhndb_dw_is_free(br, dwa))
   continue;


  if (bhndb_dw_find_resource_entry(dwa, r) != ((void*)0))
   return (dwa);
 }

 return (((void*)0));
}
