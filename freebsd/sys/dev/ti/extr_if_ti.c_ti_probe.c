
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_type {scalar_t__ ti_vid; scalar_t__ ti_did; int * ti_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct ti_type* ti_devs ;

__attribute__((used)) static int
ti_probe(device_t dev)
{
 const struct ti_type *t;

 t = ti_devs;

 while (t->ti_name != ((void*)0)) {
  if ((pci_get_vendor(dev) == t->ti_vid) &&
      (pci_get_device(dev) == t->ti_did)) {
   device_set_desc(dev, t->ti_name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}
