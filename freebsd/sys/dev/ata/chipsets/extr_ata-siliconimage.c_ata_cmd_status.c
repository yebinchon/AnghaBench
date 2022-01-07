
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ata_channel {scalar_t__ unit; } ;
typedef int device_t ;


 int ata_pci_status (int ) ;
 int device_get_parent (int ) ;
 struct ata_channel* device_get_softc (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_cmd_status(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);
    u_int8_t reg71;

    if (((reg71 = pci_read_config(device_get_parent(dev), 0x71, 1)) &
  (ch->unit ? 0x08 : 0x04))) {
 pci_write_config(device_get_parent(dev), 0x71,
    reg71 & ~(ch->unit ? 0x04 : 0x08), 1);
 return ata_pci_status(dev);
    }
    return 0;
}
