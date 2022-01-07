
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {scalar_t__ devices; } ;
typedef int device_t ;


 int ata_generic_reset (int ) ;
 scalar_t__ ata_sata_phy_reset (int ,int,int) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static void
ata_nvidia_reset(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    if (ata_sata_phy_reset(dev, -1, 1))
 ata_generic_reset(dev);
    else
 ch->devices = 0;
}
