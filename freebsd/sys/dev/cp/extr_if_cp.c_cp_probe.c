
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ cp_device_id ;
 scalar_t__ cp_vendor_id ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int cp_probe (device_t dev)
{
 if ((pci_get_vendor (dev) == cp_vendor_id) &&
     (pci_get_device (dev) == cp_device_id)) {
  device_set_desc (dev, "Cronyx-Tau-PCI serial adapter");
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}
