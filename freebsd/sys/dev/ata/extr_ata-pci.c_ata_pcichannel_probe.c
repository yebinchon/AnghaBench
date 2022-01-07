
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int ata_probe (int ) ;
 scalar_t__ device_get_ivars (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
ata_pcichannel_probe(device_t dev)
{

    if ((intptr_t)device_get_ivars(dev) < 0)
     return (ENXIO);
    device_set_desc(dev, "ATA channel");

    return ata_probe(dev);
}
