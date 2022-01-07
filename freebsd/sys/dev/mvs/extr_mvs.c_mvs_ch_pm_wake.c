
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mvs_channel {int r_mem; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int DELAY (int) ;
 int SATA_SC ;
 int SATA_SC_SPM_ACTIVE ;
 int SATA_SC_SPM_MASK ;
 int SATA_SS ;
 int SATA_SS_IPM_ACTIVE ;
 struct mvs_channel* device_get_softc (int ) ;

__attribute__((used)) static void
mvs_ch_pm_wake(device_t dev)
{
 struct mvs_channel *ch = device_get_softc(dev);
 uint32_t work;
 int timeout = 0;

 work = ATA_INL(ch->r_mem, SATA_SS);
 if (work & SATA_SS_IPM_ACTIVE)
  return;

 work = ATA_INL(ch->r_mem, SATA_SC);
 work &= ~SATA_SC_SPM_MASK;
 work |= SATA_SC_SPM_ACTIVE;
 ATA_OUTL(ch->r_mem, SATA_SC, work);

 while ((ATA_INL(ch->r_mem, SATA_SS) & SATA_SS_IPM_ACTIVE) == 0 &&
     timeout++ < 100) {
  DELAY(100);
 }
}
