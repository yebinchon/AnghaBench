
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int device_t ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ rev; int quirks; char* name; } ;


 int AHCI_Q_NOFORCE ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIC_STORAGE ;
 scalar_t__ PCIP_STORAGE_SATA_AHCI_1_0 ;
 scalar_t__ PCIS_STORAGE_RAID ;
 scalar_t__ PCIS_STORAGE_SATA ;
 TYPE_1__* ahci_ids ;
 int device_set_desc_copy (int ,char*) ;
 int force_ahci ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_devid (int ) ;
 scalar_t__ pci_get_progif (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_get_vendor (int ) ;
 int pci_read_config (int ,int,int) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
ahci_probe(device_t dev)
{
 char buf[64];
 int i, valid = 0;
 uint32_t devid = pci_get_devid(dev);
 uint8_t revid = pci_get_revid(dev);





 if (pci_get_class(dev) == PCIC_BRIDGE)
  return (ENXIO);


 if (pci_get_class(dev) == PCIC_STORAGE &&
     pci_get_subclass(dev) == PCIS_STORAGE_SATA &&
     pci_get_progif(dev) == PCIP_STORAGE_SATA_AHCI_1_0)
  valid = 1;
 else if (pci_get_class(dev) == PCIC_STORAGE &&
     pci_get_subclass(dev) == PCIS_STORAGE_RAID)
  valid = 2;

 for (i = 0; ahci_ids[i].id != 0; i++) {
  if (ahci_ids[i].id == devid &&
      ahci_ids[i].rev <= revid &&
      (valid || (force_ahci == 1 &&
       !(ahci_ids[i].quirks & AHCI_Q_NOFORCE)))) {

   if (pci_get_vendor(dev) == 0x197b &&
       (pci_read_config(dev, 0xdf, 1) & 0x40) == 0)
    return (ENXIO);
   snprintf(buf, sizeof(buf), "%s AHCI SATA controller",
       ahci_ids[i].name);
   device_set_desc_copy(dev, buf);
   return (BUS_PROBE_DEFAULT);
  }
 }
 if (valid != 1)
  return (ENXIO);
 device_set_desc_copy(dev, "AHCI SATA controller");
 return (BUS_PROBE_DEFAULT);
}
