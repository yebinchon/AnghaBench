
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct umoscom_softc {int sc_mcr; } ;
struct ucom_softc {struct umoscom_softc* sc_parent; } ;


 int UMOSCOM_MCR ;
 int UMOSCOM_MCR_RTS ;
 int UMOSCOM_UART_REG ;
 int umoscom_cfg_write (struct umoscom_softc*,int ,int) ;

__attribute__((used)) static void
umoscom_cfg_set_rts(struct ucom_softc *ucom, uint8_t onoff)
{
 struct umoscom_softc *sc = ucom->sc_parent;

 if (onoff)
  sc->sc_mcr |= UMOSCOM_MCR_RTS;
 else
  sc->sc_mcr &= ~UMOSCOM_MCR_RTS;

 umoscom_cfg_write(sc, UMOSCOM_MCR, sc->sc_mcr | UMOSCOM_UART_REG);
}
