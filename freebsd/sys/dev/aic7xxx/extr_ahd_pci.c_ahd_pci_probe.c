
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_pci_identity {int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct ahd_pci_identity* ahd_find_pci_device (int ) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
ahd_pci_probe(device_t dev)
{
 struct ahd_pci_identity *entry;

 entry = ahd_find_pci_device(dev);
 if (entry != ((void*)0)) {
  device_set_desc(dev, entry->name);
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
