
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int bus_generic_rl_release_resource (int ,int ,int,int,struct resource*) ;

int
isa_release_resource(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{

 return (bus_generic_rl_release_resource(bus, child, type, rid, res));
}
