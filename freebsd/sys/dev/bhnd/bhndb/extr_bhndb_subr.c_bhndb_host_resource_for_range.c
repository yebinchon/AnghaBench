
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct resource {int dummy; } ;
struct bhndb_host_resources {TYPE_1__* resource_specs; struct resource** resources; } ;
typedef int rman_res_t ;
struct TYPE_2__ {int type; } ;


 int rman_get_end (struct resource*) ;
 int rman_get_start (struct resource*) ;

struct resource *
bhndb_host_resource_for_range(struct bhndb_host_resources *hr, int type,
    rman_res_t start, rman_res_t count)
{
 for (u_int i = 0; hr->resource_specs[i].type != -1; i++) {
  struct resource *r = hr->resources[i];

  if (hr->resource_specs[i].type != type)
   continue;


  if (rman_get_start(r) > start)
   continue;

  if (rman_get_end(r) < (start + count - 1))
   continue;

  return (r);
 }

 return (((void*)0));
}
