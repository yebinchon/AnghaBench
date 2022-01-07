
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahc_softc {int dummy; } ;


 int BRDCS ;
 int BRDCTL ;
 int BRDDAT5 ;
 int BRDDAT6 ;
 int BRDRW ;
 int EEPROM ;
 int EXT_BRDCTL ;
 int SOFTCMDEN ;
 int SPIOCAP ;
 int ahc_flush_device_writes (struct ahc_softc*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int aic_delay (int) ;

__attribute__((used)) static void
aic785X_cable_detect(struct ahc_softc *ahc, int *internal50_present,
       int *externalcable_present, int *eeprom_present)
{
 uint8_t brdctl;
 uint8_t spiocap;

 spiocap = ahc_inb(ahc, SPIOCAP);
 spiocap &= ~SOFTCMDEN;
 spiocap |= EXT_BRDCTL;
 ahc_outb(ahc, SPIOCAP, spiocap);
 ahc_outb(ahc, BRDCTL, BRDRW|BRDCS);
 ahc_flush_device_writes(ahc);
 aic_delay(500);
 ahc_outb(ahc, BRDCTL, 0);
 ahc_flush_device_writes(ahc);
 aic_delay(500);
 brdctl = ahc_inb(ahc, BRDCTL);
 *internal50_present = (brdctl & BRDDAT5) ? 0 : 1;
 *externalcable_present = (brdctl & BRDDAT6) ? 0 : 1;
 *eeprom_present = (ahc_inb(ahc, SPIOCAP) & EEPROM) ? 1 : 0;
}
