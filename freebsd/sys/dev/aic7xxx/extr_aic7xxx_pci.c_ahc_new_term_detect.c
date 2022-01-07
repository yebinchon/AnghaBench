
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahc_softc {int dummy; } ;


 int BRDDAT3 ;
 int BRDDAT4 ;
 int BRDDAT5 ;
 int BRDDAT6 ;
 int BRDDAT7 ;
 int read_brdctl (struct ahc_softc*) ;

__attribute__((used)) static void
ahc_new_term_detect(struct ahc_softc *ahc, int *enableSEC_low,
      int *enableSEC_high, int *enablePRI_low,
      int *enablePRI_high, int *eeprom_present)
{
 uint8_t brdctl;
 brdctl = read_brdctl(ahc);
 *eeprom_present = brdctl & BRDDAT7;
 *enableSEC_high = (brdctl & BRDDAT6);
 *enableSEC_low = (brdctl & BRDDAT5);
 *enablePRI_high = (brdctl & BRDDAT4);
 *enablePRI_low = (brdctl & BRDDAT3);
}
