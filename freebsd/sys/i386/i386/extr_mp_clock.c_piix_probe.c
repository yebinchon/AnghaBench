
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int device_t ;


 int ENXIO ;
 int PCIM_CMD_PORTEN ;
 int PCIR_COMMAND ;
 int devclass_find (char*) ;
 int * devclass_get_device (int ,int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int pci_get_devid (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
piix_probe(device_t dev)
{
 u_int32_t d;

 if (devclass_get_device(devclass_find("acpi"), 0) != ((void*)0))
  return (ENXIO);
 switch (pci_get_devid(dev)) {
 case 0x71138086:
  device_set_desc(dev, "PIIX Timecounter");
  break;
 default:
  return (ENXIO);
 }

 d = pci_read_config(dev, PCIR_COMMAND, 2);
 if (!(d & PCIM_CMD_PORTEN)) {
  device_printf(dev, "PIIX I/O space not mapped\n");
  return (ENXIO);
 }
 return (0);
}
