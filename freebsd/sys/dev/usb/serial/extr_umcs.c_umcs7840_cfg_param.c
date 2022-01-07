
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct umcs7840_softc {TYPE_1__* sc_ports; } ;
struct ucom_softc {size_t sc_portno; struct umcs7840_softc* sc_parent; } ;
struct termios {int c_cflag; int c_ospeed; } ;
struct TYPE_2__ {size_t sc_lcr; size_t sc_mcr; } ;


 int CDSR_OFLOW ;
 int CDTR_IFLOW ;
 int CRTSCTS ;




 int CSIZE ;
 int CSTOPB ;
 int DPRINTF (char*,...) ;
 size_t MCS7840_UART_LCR_DATALEN5 ;
 size_t MCS7840_UART_LCR_DATALEN6 ;
 size_t MCS7840_UART_LCR_DATALEN7 ;
 size_t MCS7840_UART_LCR_DATALEN8 ;
 size_t MCS7840_UART_LCR_DATALENMASK ;
 size_t MCS7840_UART_LCR_PARITYEVEN ;
 size_t MCS7840_UART_LCR_PARITYMASK ;
 size_t MCS7840_UART_LCR_PARITYODD ;
 size_t MCS7840_UART_LCR_PARITYON ;
 size_t MCS7840_UART_LCR_STOPB1 ;
 size_t MCS7840_UART_LCR_STOPB2 ;
 size_t MCS7840_UART_MCR_CTSRTS ;
 size_t MCS7840_UART_MCR_DTRDSR ;
 int MCS7840_UART_REG_LCR ;
 int MCS7840_UART_REG_MCR ;
 int PARENB ;
 int PARODD ;
 int umcs7840_set_UART_reg_sync (struct umcs7840_softc*,size_t,int ,size_t) ;
 int umcs7840_set_baudrate (struct umcs7840_softc*,size_t,int ) ;

__attribute__((used)) static void
umcs7840_cfg_param(struct ucom_softc *ucom, struct termios *t)
{
 struct umcs7840_softc *sc = ucom->sc_parent;
 uint8_t pn = ucom->sc_portno;
 uint8_t lcr = sc->sc_ports[pn].sc_lcr;
 uint8_t mcr = sc->sc_ports[pn].sc_mcr;

 DPRINTF("Port %d config:\n", pn);
 if (t->c_cflag & CSTOPB) {
  DPRINTF("  2 stop bits\n");
  lcr |= MCS7840_UART_LCR_STOPB2;
 } else {
  lcr |= MCS7840_UART_LCR_STOPB1;
  DPRINTF("  1 stop bit\n");
 }

 lcr &= ~MCS7840_UART_LCR_PARITYMASK;
 if (t->c_cflag & PARENB) {
  lcr |= MCS7840_UART_LCR_PARITYON;
  if (t->c_cflag & PARODD) {
   lcr = MCS7840_UART_LCR_PARITYODD;
   DPRINTF("  parity on - odd\n");
  } else {
   lcr = MCS7840_UART_LCR_PARITYEVEN;
   DPRINTF("  parity on - even\n");
  }
 } else {
  lcr &= ~MCS7840_UART_LCR_PARITYON;
  DPRINTF("  parity off\n");
 }

 lcr &= ~MCS7840_UART_LCR_DATALENMASK;
 switch (t->c_cflag & CSIZE) {
 case 131:
  lcr |= MCS7840_UART_LCR_DATALEN5;
  DPRINTF("  5 bit\n");
  break;
 case 130:
  lcr |= MCS7840_UART_LCR_DATALEN6;
  DPRINTF("  6 bit\n");
  break;
 case 129:
  lcr |= MCS7840_UART_LCR_DATALEN7;
  DPRINTF("  7 bit\n");
  break;
 case 128:
  lcr |= MCS7840_UART_LCR_DATALEN8;
  DPRINTF("  8 bit\n");
  break;
 }

 if (t->c_cflag & CRTSCTS) {
  mcr |= MCS7840_UART_MCR_CTSRTS;
  DPRINTF("  CTS/RTS\n");
 } else
  mcr &= ~MCS7840_UART_MCR_CTSRTS;

 if (t->c_cflag & (CDTR_IFLOW | CDSR_OFLOW)) {
  mcr |= MCS7840_UART_MCR_DTRDSR;
  DPRINTF("  DTR/DSR\n");
 } else
  mcr &= ~MCS7840_UART_MCR_DTRDSR;

 sc->sc_ports[pn].sc_lcr = lcr;
 umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_LCR, sc->sc_ports[pn].sc_lcr);
 DPRINTF("Port %d LCR=%02x\n", pn, sc->sc_ports[pn].sc_lcr);

 sc->sc_ports[pn].sc_mcr = mcr;
 umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_MCR, sc->sc_ports[pn].sc_mcr);
 DPRINTF("Port %d MCR=%02x\n", pn, sc->sc_ports[pn].sc_mcr);

 umcs7840_set_baudrate(sc, pn, t->c_ospeed);
}
