
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct vmd_type {scalar_t__ vmd_vid; scalar_t__ vmd_did; int * vmd_name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct vmd_type* vmd_devs ;

__attribute__((used)) static int
vmd_probe(device_t dev)
{
 struct vmd_type *t;
 uint16_t vid, did;

 t = vmd_devs;
 vid = pci_get_vendor(dev);
 did = pci_get_device(dev);

 while (t->vmd_name != ((void*)0)) {
  if (vid == t->vmd_vid &&
   did == t->vmd_did) {
   device_set_desc(dev, t->vmd_name);
   return (BUS_PROBE_DEFAULT);
  }
  t++;
 }

return (ENXIO);
}
