
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_softc {int dummy; } ;


 int CSR_READ_4 (struct ti_softc*,int ) ;
 int DELAY (int) ;
 int TI_CLRBIT (struct ti_softc*,int ,int ) ;
 int TI_MISC_LOCAL_CTL ;
 int TI_MLC_EE_CLK ;
 int TI_MLC_EE_DIN ;
 int TI_MLC_EE_DOUT ;
 int TI_MLC_EE_TXEN ;
 int TI_SETBIT (struct ti_softc*,int ,int ) ;

__attribute__((used)) static uint32_t
ti_eeprom_putbyte(struct ti_softc *sc, int byte)
{
 int i, ack = 0;




 TI_SETBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_TXEN);




 for (i = 0x80; i; i >>= 1) {
  if (byte & i) {
   TI_SETBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_DOUT);
  } else {
   TI_CLRBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_DOUT);
  }
  DELAY(1);
  TI_SETBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);
  DELAY(1);
  TI_CLRBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);
 }




 TI_CLRBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_TXEN);




 TI_SETBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);
 ack = CSR_READ_4(sc, TI_MISC_LOCAL_CTL) & TI_MLC_EE_DIN;
 TI_CLRBIT(sc, TI_MISC_LOCAL_CTL, TI_MLC_EE_CLK);

 return (ack);
}
