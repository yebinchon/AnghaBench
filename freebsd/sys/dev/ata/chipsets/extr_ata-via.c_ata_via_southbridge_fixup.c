
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int device_t ;


 scalar_t__ ATA_VIA8361 ;
 scalar_t__ ATA_VIA8363 ;
 scalar_t__ ATA_VIA8371 ;
 scalar_t__ ATA_VIA8662 ;
 int M_TEMP ;
 scalar_t__ device_get_children (int ,int **,int*) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int free (int *,int ) ;
 scalar_t__ pci_get_devid (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static void
ata_via_southbridge_fixup(device_t dev)
{
    device_t *children;
    int nchildren, i;

    if (device_get_children(device_get_parent(dev), &children, &nchildren))
 return;

    for (i = 0; i < nchildren; i++) {
 if (pci_get_devid(children[i]) == ATA_VIA8363 ||
     pci_get_devid(children[i]) == ATA_VIA8371 ||
     pci_get_devid(children[i]) == ATA_VIA8662 ||
     pci_get_devid(children[i]) == ATA_VIA8361) {
     u_int8_t reg76 = pci_read_config(children[i], 0x76, 1);

     if ((reg76 & 0xf0) != 0xd0) {
  device_printf(dev,
  "Correcting VIA config for southbridge data corruption bug\n");
  pci_write_config(children[i], 0x75, 0x80, 1);
  pci_write_config(children[i], 0x76, (reg76 & 0x0f) | 0xd0, 1);
     }
     break;
 }
    }
    free(children, M_TEMP);
}
