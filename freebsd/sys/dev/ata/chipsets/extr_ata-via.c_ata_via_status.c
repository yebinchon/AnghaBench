
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ata_pci_status (int ) ;
 int ata_sata_phy_check_events (int ,int) ;

__attribute__((used)) static int
ata_via_status(device_t dev)
{

 ata_sata_phy_check_events(dev, -1);
 return (ata_pci_status(dev));
}
