
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int bus_generic_deactivate_resource (int ,int ,int,int,struct resource*) ;

__attribute__((used)) static int
pccard_deactivate_resource(device_t brdev, device_t child, int type,
    int rid, struct resource *r)
{

 return (bus_generic_deactivate_resource(brdev, child, type, rid, r));
}
