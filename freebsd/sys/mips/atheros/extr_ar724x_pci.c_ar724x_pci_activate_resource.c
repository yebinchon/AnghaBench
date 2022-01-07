
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int BUS_ACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;


 int ar71xx_bus_space_pcimem ;
 int device_get_parent (int ) ;
 int rman_set_bustag (struct resource*,int ) ;

__attribute__((used)) static int
ar724x_pci_activate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
 int res = (BUS_ACTIVATE_RESOURCE(device_get_parent(bus),
     child, type, rid, r));

 if (!res) {
  switch(type) {
  case 128:
  case 129:

   rman_set_bustag(r, ar71xx_bus_space_pcimem);
   break;
  }
 }

 return (res);
}
