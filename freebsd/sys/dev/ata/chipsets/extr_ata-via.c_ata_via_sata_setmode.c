
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {scalar_t__ unit; } ;
typedef int device_t ;


 int ata_via_old_setmode (int ,int,int) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_via_sata_setmode(device_t dev, int target, int mode)
{
 struct ata_channel *ch = device_get_softc(dev);

 if (ch->unit == 0)
  return (mode);
 return (ata_via_old_setmode(dev, target, mode));
}
