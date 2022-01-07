
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int device_t ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ id; scalar_t__ rev; char* name; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 TYPE_1__* ahci_ids ;
 scalar_t__ device_get_ivars (int ) ;
 int device_set_desc_copy (int ,char*) ;
 scalar_t__ pci_get_devid (int ) ;
 scalar_t__ pci_get_revid (int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
ahci_ata_probe(device_t dev)
{
 char buf[64];
 int i;
 uint32_t devid = pci_get_devid(dev);
 uint8_t revid = pci_get_revid(dev);

 if ((intptr_t)device_get_ivars(dev) >= 0)
  return (ENXIO);

 for (i = 0; ahci_ids[i].id != 0; i++) {
  if (ahci_ids[i].id == devid &&
      ahci_ids[i].rev <= revid) {
   snprintf(buf, sizeof(buf), "%s AHCI SATA controller",
       ahci_ids[i].name);
   device_set_desc_copy(dev, buf);
   return (BUS_PROBE_DEFAULT);
  }
 }
 device_set_desc_copy(dev, "AHCI SATA controller");
 return (BUS_PROBE_DEFAULT);
}
