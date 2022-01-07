
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ RP_VENDOR_ID ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
rp_pciprobe(device_t dev)
{
 char *s;

 s = ((void*)0);
 if (pci_get_vendor(dev) == RP_VENDOR_ID)
  s = "RocketPort PCI";

 if (s != ((void*)0)) {
  device_set_desc(dev, s);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
