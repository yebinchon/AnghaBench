
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_type {scalar_t__ xl_vid; scalar_t__ xl_did; int * xl_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct xl_type* xl_devs ;

__attribute__((used)) static int
xl_probe(device_t dev)
{
 const struct xl_type *t;

 t = xl_devs;

 while (t->xl_name != ((void*)0)) {
  if ((pci_get_vendor(dev) == t->xl_vid) &&
      (pci_get_device(dev) == t->xl_did)) {
   device_set_desc(dev, t->xl_name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}
