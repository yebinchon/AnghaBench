
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_sec_softc {int dummy; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_DEVICE_ID_NLM_SAE ;
 scalar_t__ PCI_VENDOR_NETLOGIC ;
 struct xlp_sec_softc* device_get_softc (int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
xlp_sec_probe(device_t dev)
{
 struct xlp_sec_softc *sc;

 if (pci_get_vendor(dev) == PCI_VENDOR_NETLOGIC &&
     pci_get_device(dev) == PCI_DEVICE_ID_NLM_SAE) {
  sc = device_get_softc(dev);
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
