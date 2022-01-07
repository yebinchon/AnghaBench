
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bwi_dev {scalar_t__ did; scalar_t__ vid; int * desc; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct bwi_dev* bwi_devices ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
bwi_pci_probe(device_t dev)
{
 const struct bwi_dev *b;
 uint16_t did, vid;

 did = pci_get_device(dev);
 vid = pci_get_vendor(dev);

 for (b = bwi_devices; b->desc != ((void*)0); ++b) {
  if (b->did == did && b->vid == vid) {
   device_set_desc(dev, b->desc);
   return BUS_PROBE_DEFAULT;
  }
 }
 return ENXIO;
}
