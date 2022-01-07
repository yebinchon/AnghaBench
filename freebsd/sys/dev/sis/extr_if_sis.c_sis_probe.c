
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_type {scalar_t__ sis_vid; scalar_t__ sis_did; int * sis_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct sis_type* sis_devs ;

__attribute__((used)) static int
sis_probe(device_t dev)
{
 const struct sis_type *t;

 t = sis_devs;

 while (t->sis_name != ((void*)0)) {
  if ((pci_get_vendor(dev) == t->sis_vid) &&
      (pci_get_device(dev) == t->sis_did)) {
   device_set_desc(dev, t->sis_name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}
