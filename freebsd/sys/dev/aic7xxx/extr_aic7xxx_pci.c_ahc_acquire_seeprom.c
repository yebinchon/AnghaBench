
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seeprom_descriptor {int sd_RDY; int sd_MS; } ;
struct ahc_softc {int features; } ;


 int AHC_SPIOCAP ;
 int SEEPROM ;
 int SEEPROM_OUTB (struct seeprom_descriptor*,int ) ;
 int SEEPROM_STATUS_INB (struct seeprom_descriptor*) ;
 int SPIOCAP ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int aic_delay (int) ;

int
ahc_acquire_seeprom(struct ahc_softc *ahc, struct seeprom_descriptor *sd)
{
 int wait;

 if ((ahc->features & AHC_SPIOCAP) != 0
  && (ahc_inb(ahc, SPIOCAP) & SEEPROM) == 0)
  return (0);
 SEEPROM_OUTB(sd, sd->sd_MS);
 wait = 1000;
 while (--wait && ((SEEPROM_STATUS_INB(sd) & sd->sd_RDY) == 0)) {
  aic_delay(1000);
 }
 if ((SEEPROM_STATUS_INB(sd) & sd->sd_RDY) == 0) {
  SEEPROM_OUTB(sd, 0);
  return (0);
 }
 return(1);
}
