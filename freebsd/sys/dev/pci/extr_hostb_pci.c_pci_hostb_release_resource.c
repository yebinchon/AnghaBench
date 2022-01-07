
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int bus_release_resource (int ,int,int,struct resource*) ;

__attribute__((used)) static int
pci_hostb_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{

 return (bus_release_resource(dev, type, rid, r));
}
