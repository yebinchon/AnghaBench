
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ata_channel {int dummy; } ;
typedef int device_t ;


 int ATA_SSTATUS ;
 scalar_t__ ata_sata_scr_read (struct ata_channel*,int,int ,int*) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_intel_sata_getrev(device_t dev, int target)
{
 struct ata_channel *ch = device_get_softc(dev);
 uint32_t status;

 if (ata_sata_scr_read(ch, target, ATA_SSTATUS, &status) == 0)
  return ((status & 0x0f0) >> 4);
 return (0xff);
}
