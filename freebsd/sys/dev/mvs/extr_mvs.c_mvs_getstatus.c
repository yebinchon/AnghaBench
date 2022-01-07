
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mvs_channel {scalar_t__ fake_busy; int r_mem; } ;
typedef int device_t ;


 int ATA_ALTSTAT ;
 int ATA_INB (int ,int ) ;
 int ATA_STATUS ;
 int ATA_S_BUSY ;
 int ATA_S_DRQ ;
 int ATA_S_ERROR ;
 struct mvs_channel* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
mvs_getstatus(device_t dev, int clear)
{
 struct mvs_channel *ch = device_get_softc(dev);
 uint8_t status = ATA_INB(ch->r_mem, clear ? ATA_STATUS : ATA_ALTSTAT);

 if (ch->fake_busy) {
  if (status & (ATA_S_BUSY | ATA_S_DRQ | ATA_S_ERROR))
   ch->fake_busy = 0;
  else
   status |= ATA_S_BUSY;
 }
 return (status);
}
