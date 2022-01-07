
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {int dummy; } ;


 int NGE_EECMD_READ ;
 int NGE_MEAR_EE_CLK ;
 int NGE_MEAR_EE_DIN ;
 int SIO_CLR (int ) ;
 int SIO_SET (int ) ;
 int nge_delay (struct nge_softc*) ;

__attribute__((used)) static void
nge_eeprom_putbyte(struct nge_softc *sc, int addr)
{
 int d, i;

 d = addr | NGE_EECMD_READ;




 for (i = 0x400; i; i >>= 1) {
  if (d & i) {
   SIO_SET(NGE_MEAR_EE_DIN);
  } else {
   SIO_CLR(NGE_MEAR_EE_DIN);
  }
  nge_delay(sc);
  SIO_SET(NGE_MEAR_EE_CLK);
  nge_delay(sc);
  SIO_CLR(NGE_MEAR_EE_CLK);
  nge_delay(sc);
 }
}
