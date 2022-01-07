
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_type {scalar_t__ my_vid; scalar_t__ my_did; int * my_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 struct my_type* my_devs ;
 struct my_type* my_info_tmp ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
my_probe(device_t dev)
{
 struct my_type *t;

 t = my_devs;
 while (t->my_name != ((void*)0)) {
  if ((pci_get_vendor(dev) == t->my_vid) &&
      (pci_get_device(dev) == t->my_did)) {
   device_set_desc(dev, t->my_name);
   my_info_tmp = t;
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }
 return (ENXIO);
}
