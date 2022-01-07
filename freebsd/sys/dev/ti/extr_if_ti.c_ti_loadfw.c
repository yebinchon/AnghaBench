
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_softc {int ti_hwrev; int ti_dev; } ;


 int CSR_WRITE_4 (struct ti_softc*,int ,int ) ;
 int TI_CPU_PROGRAM_COUNTER ;
 int TI_FIRMWARE_FIX ;
 int TI_FIRMWARE_MAJOR ;
 int TI_FIRMWARE_MINOR ;


 int TI_LOCK_ASSERT (struct ti_softc*) ;
 int device_printf (int ,char*,...) ;
 int ti_mem_write (struct ti_softc*,int ,int ,int ) ;
 int ti_mem_zero (struct ti_softc*,int ,int ) ;
 int tigon2FwBssAddr ;
 int tigon2FwBssLen ;
 int tigon2FwData ;
 int tigon2FwDataAddr ;
 int tigon2FwDataLen ;
 int tigon2FwReleaseFix ;
 int tigon2FwReleaseMajor ;
 int tigon2FwReleaseMinor ;
 int tigon2FwRodata ;
 int tigon2FwRodataAddr ;
 int tigon2FwRodataLen ;
 int tigon2FwSbssAddr ;
 int tigon2FwSbssLen ;
 int tigon2FwStartAddr ;
 int tigon2FwText ;
 int tigon2FwTextAddr ;
 int tigon2FwTextLen ;
 int tigonFwBssAddr ;
 int tigonFwBssLen ;
 int tigonFwData ;
 int tigonFwDataAddr ;
 int tigonFwDataLen ;
 int tigonFwReleaseFix ;
 int tigonFwReleaseMajor ;
 int tigonFwReleaseMinor ;
 int tigonFwRodata ;
 int tigonFwRodataAddr ;
 int tigonFwRodataLen ;
 int tigonFwSbssAddr ;
 int tigonFwSbssLen ;
 int tigonFwStartAddr ;
 int tigonFwText ;
 int tigonFwTextAddr ;
 int tigonFwTextLen ;

__attribute__((used)) static void
ti_loadfw(struct ti_softc *sc)
{

 TI_LOCK_ASSERT(sc);

 switch (sc->ti_hwrev) {
 case 129:
  if (tigonFwReleaseMajor != TI_FIRMWARE_MAJOR ||
      tigonFwReleaseMinor != TI_FIRMWARE_MINOR ||
      tigonFwReleaseFix != TI_FIRMWARE_FIX) {
   device_printf(sc->ti_dev, "firmware revision mismatch; "
       "want %d.%d.%d, got %d.%d.%d\n",
       TI_FIRMWARE_MAJOR, TI_FIRMWARE_MINOR,
       TI_FIRMWARE_FIX, tigonFwReleaseMajor,
       tigonFwReleaseMinor, tigonFwReleaseFix);
   return;
  }
  ti_mem_write(sc, tigonFwTextAddr, tigonFwTextLen, tigonFwText);
  ti_mem_write(sc, tigonFwDataAddr, tigonFwDataLen, tigonFwData);
  ti_mem_write(sc, tigonFwRodataAddr, tigonFwRodataLen,
      tigonFwRodata);
  ti_mem_zero(sc, tigonFwBssAddr, tigonFwBssLen);
  ti_mem_zero(sc, tigonFwSbssAddr, tigonFwSbssLen);
  CSR_WRITE_4(sc, TI_CPU_PROGRAM_COUNTER, tigonFwStartAddr);
  break;
 case 128:
  if (tigon2FwReleaseMajor != TI_FIRMWARE_MAJOR ||
      tigon2FwReleaseMinor != TI_FIRMWARE_MINOR ||
      tigon2FwReleaseFix != TI_FIRMWARE_FIX) {
   device_printf(sc->ti_dev, "firmware revision mismatch; "
       "want %d.%d.%d, got %d.%d.%d\n",
       TI_FIRMWARE_MAJOR, TI_FIRMWARE_MINOR,
       TI_FIRMWARE_FIX, tigon2FwReleaseMajor,
       tigon2FwReleaseMinor, tigon2FwReleaseFix);
   return;
  }
  ti_mem_write(sc, tigon2FwTextAddr, tigon2FwTextLen,
      tigon2FwText);
  ti_mem_write(sc, tigon2FwDataAddr, tigon2FwDataLen,
      tigon2FwData);
  ti_mem_write(sc, tigon2FwRodataAddr, tigon2FwRodataLen,
      tigon2FwRodata);
  ti_mem_zero(sc, tigon2FwBssAddr, tigon2FwBssLen);
  ti_mem_zero(sc, tigon2FwSbssAddr, tigon2FwSbssLen);
  CSR_WRITE_4(sc, TI_CPU_PROGRAM_COUNTER, tigon2FwStartAddr);
  break;
 default:
  device_printf(sc->ti_dev,
      "can't load firmware: unknown hardware rev\n");
  break;
 }
}
