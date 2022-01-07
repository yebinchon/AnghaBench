
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCIC_PROCESSOR ;
 scalar_t__ PCIS_PROCESSOR_POWERPC ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_progif (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
fsl_pcib_rc_probe(device_t dev)
{

 if (pci_get_vendor(dev) != 0x1957)
  return (ENXIO);
 if (pci_get_progif(dev) != 0)
  return (ENXIO);
 if (pci_get_class(dev) != PCIC_PROCESSOR)
  return (ENXIO);
 if (pci_get_subclass(dev) != PCIS_PROCESSOR_POWERPC)
  return (ENXIO);

 device_set_desc(dev, "MPC85xx Root Complex bridge");

 return (BUS_PROBE_DEFAULT);
}
