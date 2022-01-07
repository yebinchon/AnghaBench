
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct ata_chip_id {scalar_t__ chipid; scalar_t__ chiprev; } ;
typedef int device_t ;


 scalar_t__ pci_get_devid (int ) ;
 scalar_t__ pci_get_revid (int ) ;

const struct ata_chip_id *
ata_match_chip(device_t dev, const struct ata_chip_id *index)
{
    uint32_t devid;
    uint8_t revid;

    devid = pci_get_devid(dev);
    revid = pci_get_revid(dev);
    while (index->chipid != 0) {
 if (devid == index->chipid && revid >= index->chiprev)
     return (index);
 index++;
    }
    return (((void*)0));
}
