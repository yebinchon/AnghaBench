
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ GDT_DEVICE_ID_MAX ;
 scalar_t__ GDT_DEVICE_ID_MIN ;
 scalar_t__ GDT_DEVICE_ID_NEWRX ;
 scalar_t__ GDT_VENDOR_ID ;
 scalar_t__ INTEL_DEVICE_ID_IIR ;
 scalar_t__ INTEL_VENDOR_ID_IIR ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
iir_pci_probe(device_t dev)
{
    if (pci_get_vendor(dev) == INTEL_VENDOR_ID_IIR &&
        pci_get_device(dev) == INTEL_DEVICE_ID_IIR) {
        device_set_desc(dev, "Intel Integrated RAID Controller");
        return (BUS_PROBE_DEFAULT);
    }
    if (pci_get_vendor(dev) == GDT_VENDOR_ID &&
        ((pci_get_device(dev) >= GDT_DEVICE_ID_MIN &&
        pci_get_device(dev) <= GDT_DEVICE_ID_MAX) ||
        pci_get_device(dev) == GDT_DEVICE_ID_NEWRX)) {
        device_set_desc(dev, "ICP Disk Array Controller");
        return (BUS_PROBE_DEFAULT);
    }
    return (ENXIO);
}
