
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int pci_release_resource (int ,int ,int,int,struct resource*) ;

__attribute__((used)) static int
vmd_bus_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
 if (type == SYS_RES_MEMORY) {

  return (0);
 }

 return (pci_release_resource(dev, child, type, rid, r));
}
