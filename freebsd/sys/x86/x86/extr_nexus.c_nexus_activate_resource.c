
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {int dummy; } ;
struct resource {int dummy; } ;
typedef int device_t ;


 int RF_UNMAPPED ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int nexus_map_resource (int ,int ,int,struct resource*,int *,struct resource_map*) ;
 int rman_activate_resource (struct resource*) ;
 int rman_deactivate_resource (struct resource*) ;
 int rman_get_flags (struct resource*) ;
 int rman_set_mapping (struct resource*,struct resource_map*) ;

__attribute__((used)) static int
nexus_activate_resource(device_t bus, device_t child, int type, int rid,
   struct resource *r)
{
 struct resource_map map;
 int error;

 error = rman_activate_resource(r);
 if (error != 0)
  return (error);

 if (!(rman_get_flags(r) & RF_UNMAPPED) &&
     (type == SYS_RES_MEMORY || type == SYS_RES_IOPORT)) {
  error = nexus_map_resource(bus, child, type, r, ((void*)0), &map);
  if (error) {
   rman_deactivate_resource(r);
   return (error);
  }

  rman_set_mapping(r,&map);
 }
 return (0);
}
