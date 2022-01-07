
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int dc_romwidth; } ;


 int DC_CLRBIT (struct dc_softc*,int ,int ) ;
 int DC_EECMD_READ ;
 int DC_SETBIT (struct dc_softc*,int ,int ) ;
 int DC_SIO ;
 int DC_SIO_EE_CLK ;
 int DC_SIO_EE_DATAIN ;
 int SIO_CLR (int ) ;
 int SIO_SET (int ) ;
 int dc_delay (struct dc_softc*) ;

__attribute__((used)) static void
dc_eeprom_putbyte(struct dc_softc *sc, int addr)
{
 int d, i;

 d = DC_EECMD_READ >> 6;
 for (i = 3; i--; ) {
  if (d & (1 << i))
   DC_SETBIT(sc, DC_SIO, DC_SIO_EE_DATAIN);
  else
   DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_DATAIN);
  dc_delay(sc);
  DC_SETBIT(sc, DC_SIO, DC_SIO_EE_CLK);
  dc_delay(sc);
  DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
  dc_delay(sc);
 }




 for (i = sc->dc_romwidth; i--;) {
  if (addr & (1 << i)) {
   SIO_SET(DC_SIO_EE_DATAIN);
  } else {
   SIO_CLR(DC_SIO_EE_DATAIN);
  }
  dc_delay(sc);
  SIO_SET(DC_SIO_EE_CLK);
  dc_delay(sc);
  SIO_CLR(DC_SIO_EE_CLK);
  dc_delay(sc);
 }
}
