
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_type {scalar_t__ ste_vid; scalar_t__ ste_did; int * ste_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct ste_type* ste_devs ;

__attribute__((used)) static int
ste_probe(device_t dev)
{
 const struct ste_type *t;

 t = ste_devs;

 while (t->ste_name != ((void*)0)) {
  if ((pci_get_vendor(dev) == t->ste_vid) &&
      (pci_get_device(dev) == t->ste_did)) {
   device_set_desc(dev, t->ste_name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}
