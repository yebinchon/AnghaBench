
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char const*) ;
 char* ohci_pci_match (int ) ;

__attribute__((used)) static int
ohci_pci_probe(device_t self)
{
 const char *desc = ohci_pci_match(self);

 if (desc) {
  device_set_desc(self, desc);
  return (0);
 } else {
  return (ENXIO);
 }
}
