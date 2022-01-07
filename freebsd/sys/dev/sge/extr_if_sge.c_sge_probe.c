
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_type {scalar_t__ sge_vid; scalar_t__ sge_did; int * sge_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct sge_type* sge_devs ;

__attribute__((used)) static int
sge_probe(device_t dev)
{
 struct sge_type *t;

 t = sge_devs;
 while (t->sge_name != ((void*)0)) {
  if ((pci_get_vendor(dev) == t->sge_vid) &&
      (pci_get_device(dev) == t->sge_did)) {
   device_set_desc(dev, t->sge_name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}
