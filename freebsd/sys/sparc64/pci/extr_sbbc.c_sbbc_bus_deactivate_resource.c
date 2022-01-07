
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_generic_deactivate_resource (int ,int ,int,int,struct resource*) ;

__attribute__((used)) static int
sbbc_bus_deactivate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{

 if (type == SYS_RES_MEMORY)
  return (0);
 return (bus_generic_deactivate_resource(bus, child, type, rid, res));
}
