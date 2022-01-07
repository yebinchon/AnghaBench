
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct resource_spec {int type; scalar_t__ rid; } ;
struct resource {int dummy; } ;
struct TYPE_2__ {int type; scalar_t__ rid; } ;
struct bhndb_regwin {TYPE_1__ res; } ;
struct bhndb_host_resources {int owner; struct resource** resources; struct resource_spec* resource_specs; } ;


 int device_printf (int ,char*,int,scalar_t__) ;

struct resource *
bhndb_host_resource_for_regwin(struct bhndb_host_resources *hr,
    const struct bhndb_regwin *win)
{
 const struct resource_spec *rspecs;

 rspecs = hr->resource_specs;
 for (u_int i = 0; rspecs[i].type != -1; i++) {
  if (win->res.type != rspecs[i].type)
   continue;

  if (win->res.rid != rspecs[i].rid)
   continue;


  return (hr->resources[i]);
 }

 device_printf(hr->owner, "missing regwin resource spec "
     "(type=%d, rid=%d)\n", win->res.type, win->res.rid);

 return (((void*)0));
}
