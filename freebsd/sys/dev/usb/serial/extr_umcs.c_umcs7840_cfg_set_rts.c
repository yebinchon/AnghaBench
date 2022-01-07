
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct umcs7840_softc {TYPE_1__* sc_ports; } ;
struct ucom_softc {size_t sc_portno; struct umcs7840_softc* sc_parent; } ;
struct TYPE_2__ {int sc_mcr; } ;


 int DPRINTF (char*,size_t,char*) ;
 int MCS7840_UART_MCR_RTS ;
 int MCS7840_UART_REG_MCR ;
 int umcs7840_set_UART_reg_sync (struct umcs7840_softc*,size_t,int ,int ) ;

__attribute__((used)) static void
umcs7840_cfg_set_rts(struct ucom_softc *ucom, uint8_t onoff)
{
 struct umcs7840_softc *sc = ucom->sc_parent;
 uint8_t pn = ucom->sc_portno;

 if (onoff)
  sc->sc_ports[pn].sc_mcr |= MCS7840_UART_MCR_RTS;
 else
  sc->sc_ports[pn].sc_mcr &= ~MCS7840_UART_MCR_RTS;

 umcs7840_set_UART_reg_sync(sc, pn, MCS7840_UART_REG_MCR, sc->sc_ports[pn].sc_mcr);
 DPRINTF("Port %d RTS set to: %s\n", pn, onoff ? "on" : "off");
}
