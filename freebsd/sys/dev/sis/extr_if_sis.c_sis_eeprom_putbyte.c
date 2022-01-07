
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {int dummy; } ;


 int SIO_CLR (int ) ;
 int SIO_SET (int ) ;
 int SIS_EECMD_READ ;
 int SIS_EECTL_CLK ;
 int SIS_EECTL_DIN ;
 int sis_delay (struct sis_softc*) ;

__attribute__((used)) static void
sis_eeprom_putbyte(struct sis_softc *sc, int addr)
{
 int d, i;

 d = addr | SIS_EECMD_READ;




 for (i = 0x400; i; i >>= 1) {
  if (d & i) {
   SIO_SET(SIS_EECTL_DIN);
  } else {
   SIO_CLR(SIS_EECTL_DIN);
  }
  sis_delay(sc);
  SIO_SET(SIS_EECTL_CLK);
  sis_delay(sc);
  SIO_CLR(SIS_EECTL_CLK);
  sis_delay(sc);
 }
}
