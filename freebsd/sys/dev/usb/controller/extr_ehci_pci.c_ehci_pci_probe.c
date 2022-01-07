
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char const*) ;
 char* ehci_pci_match (int ) ;

__attribute__((used)) static int
ehci_pci_probe(device_t self)
{
 const char *desc = ehci_pci_match(self);

 if (desc) {
  device_set_desc(self, desc);
  return (BUS_PROBE_DEFAULT);
 } else {
  return (ENXIO);
 }
}
