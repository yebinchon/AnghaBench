
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {scalar_t__ unit; } ;
typedef int device_t ;


 int device_get_parent (int ) ;
 struct ata_channel* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;

__attribute__((used)) static int
ata_via_sata_getrev(device_t dev, int target)
{
 device_t parent = device_get_parent(dev);
 struct ata_channel *ch = device_get_softc(dev);

 if (ch->unit == 0) {
  if (pci_read_config(parent, 0xa0 + target, 1) & 0x10)
   return (2);
  else
   return (1);
 }
 return (0);
}
