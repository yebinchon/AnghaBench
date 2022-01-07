
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ IPS_COPPERHEAD_DEVICE_ID ;
 scalar_t__ IPS_MARCO_DEVICE_ID ;
 scalar_t__ IPS_MORPHEUS_DEVICE_ID ;
 scalar_t__ IPS_VENDOR_ID ;
 scalar_t__ IPS_VENDOR_ID_ADAPTEC ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int ips_pci_probe(device_t dev)
{

        if ((pci_get_vendor(dev) == IPS_VENDOR_ID) &&
     (pci_get_device(dev) == IPS_MORPHEUS_DEVICE_ID)) {
  device_set_desc(dev, "IBM ServeRAID Adapter");
                return (BUS_PROBE_DEFAULT);
        } else if ((pci_get_vendor(dev) == IPS_VENDOR_ID) &&
     (pci_get_device(dev) == IPS_COPPERHEAD_DEVICE_ID)) {
  device_set_desc(dev, "IBM ServeRAID Adapter");
  return (BUS_PROBE_DEFAULT);
        } else if ((pci_get_vendor(dev) == IPS_VENDOR_ID_ADAPTEC) &&
     (pci_get_device(dev) == IPS_MARCO_DEVICE_ID)) {
  device_set_desc(dev, "Adaptec ServeRAID Adapter");
  return (BUS_PROBE_DEFAULT);
 }
        return(ENXIO);
}
