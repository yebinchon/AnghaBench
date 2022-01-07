
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int attached; } ;
typedef int device_t ;


 int ata_suspend (int ) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_isa_suspend(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    if (!ch->attached)
 return (0);

    return ata_suspend(dev);
}
