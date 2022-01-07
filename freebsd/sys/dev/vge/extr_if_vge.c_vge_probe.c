
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_type {scalar_t__ vge_vid; scalar_t__ vge_did; int * vge_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct vge_type* vge_devs ;

__attribute__((used)) static int
vge_probe(device_t dev)
{
 struct vge_type *t;

 t = vge_devs;

 while (t->vge_name != ((void*)0)) {
  if ((pci_get_vendor(dev) == t->vge_vid) &&
      (pci_get_device(dev) == t->vge_did)) {
   device_set_desc(dev, t->vge_name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

 return (ENXIO);
}
