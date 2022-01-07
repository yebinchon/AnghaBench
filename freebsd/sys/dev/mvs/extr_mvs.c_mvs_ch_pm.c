
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mvs_channel {scalar_t__ numrslots; int pm_level; int r_mem; } ;
typedef int device_t ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int ) ;
 int SATA_SC ;
 int SATA_SC_SPM_MASK ;
 int SATA_SC_SPM_PARTIAL ;
 int SATA_SC_SPM_SLUMBER ;
 struct mvs_channel* device_get_softc (int ) ;

__attribute__((used)) static void
mvs_ch_pm(void *arg)
{
 device_t dev = (device_t)arg;
 struct mvs_channel *ch = device_get_softc(dev);
 uint32_t work;

 if (ch->numrslots != 0)
  return;

 work = ATA_INL(ch->r_mem, SATA_SC);
 work &= ~SATA_SC_SPM_MASK;
 if (ch->pm_level == 4)
  work |= SATA_SC_SPM_PARTIAL;
 else
  work |= SATA_SC_SPM_SLUMBER;
 ATA_OUTL(ch->r_mem, SATA_SC, work);
}
