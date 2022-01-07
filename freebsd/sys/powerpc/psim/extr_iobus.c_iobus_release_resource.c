
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int RF_ACTIVE ;
 int bus_deactivate_resource (int ,int,int,struct resource*) ;
 int rman_get_flags (struct resource*) ;
 int rman_release_resource (struct resource*) ;

__attribute__((used)) static int
iobus_release_resource(device_t bus, device_t child, int type, int rid,
         struct resource *res)
{
 if (rman_get_flags(res) & RF_ACTIVE) {
  int error = bus_deactivate_resource(child, type, rid, res);
  if (error)
   return error;
 }

 return (rman_release_resource(res));
}
