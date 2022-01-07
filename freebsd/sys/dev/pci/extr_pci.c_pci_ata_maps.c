
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct resource_list {int dummy; } ;
typedef int device_t ;


 int PCIP_STORAGE_IDE_MODEPRIM ;
 int PCIP_STORAGE_IDE_MODESEC ;
 int PCIR_BAR (int) ;
 int PCIR_PROGIF ;
 int SYS_RES_IOPORT ;
 int pci_add_map (int ,int ,int,struct resource_list*,int,int) ;
 scalar_t__ pci_mapbase (int) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;
 int printf (char*) ;
 int resource_list_add (struct resource_list*,int,int,int,int,int) ;
 int resource_list_reserve (struct resource_list*,int ,int ,int,int*,int,int,int,int ) ;

__attribute__((used)) static void
pci_ata_maps(device_t bus, device_t dev, struct resource_list *rl, int force,
    uint32_t prefetchmask)
{
 int rid, type, progif;
 progif = pci_read_config(dev, PCIR_PROGIF, 1);
 type = SYS_RES_IOPORT;
 if (progif & PCIP_STORAGE_IDE_MODEPRIM) {
  pci_add_map(bus, dev, PCIR_BAR(0), rl, force,
      prefetchmask & (1 << 0));
  pci_add_map(bus, dev, PCIR_BAR(1), rl, force,
      prefetchmask & (1 << 1));
 } else {
  rid = PCIR_BAR(0);
  resource_list_add(rl, type, rid, 0x1f0, 0x1f7, 8);
  (void)resource_list_reserve(rl, bus, dev, type, &rid, 0x1f0,
      0x1f7, 8, 0);
  rid = PCIR_BAR(1);
  resource_list_add(rl, type, rid, 0x3f6, 0x3f6, 1);
  (void)resource_list_reserve(rl, bus, dev, type, &rid, 0x3f6,
      0x3f6, 1, 0);
 }
 if (progif & PCIP_STORAGE_IDE_MODESEC) {
  pci_add_map(bus, dev, PCIR_BAR(2), rl, force,
      prefetchmask & (1 << 2));
  pci_add_map(bus, dev, PCIR_BAR(3), rl, force,
      prefetchmask & (1 << 3));
 } else {
  rid = PCIR_BAR(2);
  resource_list_add(rl, type, rid, 0x170, 0x177, 8);
  (void)resource_list_reserve(rl, bus, dev, type, &rid, 0x170,
      0x177, 8, 0);
  rid = PCIR_BAR(3);
  resource_list_add(rl, type, rid, 0x376, 0x376, 1);
  (void)resource_list_reserve(rl, bus, dev, type, &rid, 0x376,
      0x376, 1, 0);
 }
 pci_add_map(bus, dev, PCIR_BAR(4), rl, force,
     prefetchmask & (1 << 4));
 pci_add_map(bus, dev, PCIR_BAR(5), rl, force,
     prefetchmask & (1 << 5));
}
