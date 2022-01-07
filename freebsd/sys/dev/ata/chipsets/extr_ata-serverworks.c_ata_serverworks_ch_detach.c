
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ata_pci_dmafini (int ) ;

__attribute__((used)) static int
ata_serverworks_ch_detach(device_t dev)
{

    ata_pci_dmafini(dev);
    return (0);
}
