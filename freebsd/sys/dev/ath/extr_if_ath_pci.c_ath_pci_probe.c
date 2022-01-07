
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 char* ath_hal_probe (int ,int ) ;
 int device_set_desc (int ,char const*) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
ath_pci_probe(device_t dev)
{
 const char* devname;

 devname = ath_hal_probe(pci_get_vendor(dev), pci_get_device(dev));
 if (devname != ((void*)0)) {
  device_set_desc(dev, devname);
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}
