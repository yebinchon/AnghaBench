
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct umoscom_softc {int sc_lcr; } ;
struct ucom_softc {struct umoscom_softc* sc_parent; } ;
struct termios {int c_cflag; scalar_t__ c_ospeed; } ;






 int CSIZE ;
 int CSTOPB ;
 int DPRINTF (char*,...) ;
 int PARENB ;
 int PARODD ;
 int UMOSCOM_BAUDHI ;
 int UMOSCOM_BAUDLO ;
 scalar_t__ UMOSCOM_BAUD_REF ;
 int UMOSCOM_LCR ;
 int UMOSCOM_LCR_DBITS (int) ;
 int UMOSCOM_LCR_DIVLATCH_EN ;
 int UMOSCOM_LCR_PARITY_EVEN ;
 int UMOSCOM_LCR_PARITY_NONE ;
 int UMOSCOM_LCR_PARITY_ODD ;
 int UMOSCOM_LCR_STOP_BITS_1 ;
 int UMOSCOM_LCR_STOP_BITS_2 ;
 int UMOSCOM_UART_REG ;
 int umoscom_cfg_write (struct umoscom_softc*,int ,int) ;

__attribute__((used)) static void
umoscom_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct umoscom_softc *sc = ucom->sc_parent;
 uint16_t data;

 DPRINTF("speed=%d\n", t->c_ospeed);

 data = ((uint32_t)UMOSCOM_BAUD_REF) / ((uint32_t)t->c_ospeed);

 if (data == 0) {
  DPRINTF("invalid baud rate!\n");
  return;
 }
 umoscom_cfg_write(sc, UMOSCOM_LCR,
     UMOSCOM_LCR_DIVLATCH_EN | UMOSCOM_UART_REG);

 umoscom_cfg_write(sc, UMOSCOM_BAUDLO,
     (data & 0xFF) | UMOSCOM_UART_REG);

 umoscom_cfg_write(sc, UMOSCOM_BAUDHI,
     ((data >> 8) & 0xFF) | UMOSCOM_UART_REG);

 if (t->c_cflag & CSTOPB)
  data = UMOSCOM_LCR_STOP_BITS_2;
 else
  data = UMOSCOM_LCR_STOP_BITS_1;

 if (t->c_cflag & PARENB) {
  if (t->c_cflag & PARODD)
   data |= UMOSCOM_LCR_PARITY_ODD;
  else
   data |= UMOSCOM_LCR_PARITY_EVEN;
 } else
  data |= UMOSCOM_LCR_PARITY_NONE;

 switch (t->c_cflag & CSIZE) {
 case 131:
  data |= UMOSCOM_LCR_DBITS(5);
  break;
 case 130:
  data |= UMOSCOM_LCR_DBITS(6);
  break;
 case 129:
  data |= UMOSCOM_LCR_DBITS(7);
  break;
 case 128:
  data |= UMOSCOM_LCR_DBITS(8);
  break;
 }

 sc->sc_lcr = data;
 umoscom_cfg_write(sc, UMOSCOM_LCR, data | UMOSCOM_UART_REG);
}
