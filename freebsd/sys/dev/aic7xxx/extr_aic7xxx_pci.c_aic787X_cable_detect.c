
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ahc_softc {int dummy; } ;


 int BRDDAT5 ;
 int BRDDAT6 ;
 int BRDDAT7 ;
 int read_brdctl (struct ahc_softc*) ;
 int write_brdctl (struct ahc_softc*,int ) ;

__attribute__((used)) static void
aic787X_cable_detect(struct ahc_softc *ahc, int *internal50_present,
       int *internal68_present, int *externalcable_present,
       int *eeprom_present)
{
 uint8_t brdctl;
 write_brdctl(ahc, 0);






 brdctl = read_brdctl(ahc);
 *internal50_present = (brdctl & BRDDAT6) ? 0 : 1;
 *internal68_present = (brdctl & BRDDAT7) ? 0 : 1;





 write_brdctl(ahc, BRDDAT5);






 brdctl = read_brdctl(ahc);
 *externalcable_present = (brdctl & BRDDAT6) ? 0 : 1;
 *eeprom_present = (brdctl & BRDDAT7) ? 1 : 0;
}
