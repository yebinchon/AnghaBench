
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int dc_romwidth; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int ) ;
 int DC_CLRBIT (struct dc_softc*,int ,int ) ;
 int DC_SETBIT (struct dc_softc*,int ,int ) ;
 int DC_SIO ;
 int DC_SIO_EESEL ;
 int DC_SIO_EE_CLK ;
 int DC_SIO_EE_CS ;
 int DC_SIO_EE_DATAIN ;
 int DC_SIO_EE_DATAOUT ;
 int DC_SIO_ROMCTL_READ ;
 int dc_delay (struct dc_softc*) ;
 int dc_eeprom_idle (struct dc_softc*) ;

__attribute__((used)) static void
dc_eeprom_width(struct dc_softc *sc)
{
 int i;


 dc_eeprom_idle(sc);


 CSR_WRITE_4(sc, DC_SIO, DC_SIO_EESEL);
 dc_delay(sc);
 DC_SETBIT(sc, DC_SIO, DC_SIO_ROMCTL_READ);
 dc_delay(sc);
 DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
 dc_delay(sc);
 DC_SETBIT(sc, DC_SIO, DC_SIO_EE_CS);
 dc_delay(sc);

 for (i = 3; i--;) {
  if (6 & (1 << i))
   DC_SETBIT(sc, DC_SIO, DC_SIO_EE_DATAIN);
  else
   DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_DATAIN);
  dc_delay(sc);
  DC_SETBIT(sc, DC_SIO, DC_SIO_EE_CLK);
  dc_delay(sc);
  DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
  dc_delay(sc);
 }

 for (i = 1; i <= 12; i++) {
  DC_SETBIT(sc, DC_SIO, DC_SIO_EE_CLK);
  dc_delay(sc);
  if (!(CSR_READ_4(sc, DC_SIO) & DC_SIO_EE_DATAOUT)) {
   DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
   dc_delay(sc);
   break;
  }
  DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
  dc_delay(sc);
 }


 dc_eeprom_idle(sc);

 if (i < 4 || i > 12)
  sc->dc_romwidth = 6;
 else
  sc->dc_romwidth = i;


 CSR_WRITE_4(sc, DC_SIO, DC_SIO_EESEL);
 dc_delay(sc);
 DC_SETBIT(sc, DC_SIO, DC_SIO_ROMCTL_READ);
 dc_delay(sc);
 DC_CLRBIT(sc, DC_SIO, DC_SIO_EE_CLK);
 dc_delay(sc);
 DC_SETBIT(sc, DC_SIO, DC_SIO_EE_CS);
 dc_delay(sc);


 dc_eeprom_idle(sc);
}
