
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_type {scalar_t__ bfe_vid; scalar_t__ bfe_did; int * bfe_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct bfe_type* bfe_devs ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
bfe_probe(device_t dev)
{
 struct bfe_type *t;

 t = bfe_devs;

 while (t->bfe_name != ((void*)0)) {
  if (pci_get_vendor(dev) == t->bfe_vid &&
      pci_get_device(dev) == t->bfe_did) {
   device_set_desc(dev, t->bfe_name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}
