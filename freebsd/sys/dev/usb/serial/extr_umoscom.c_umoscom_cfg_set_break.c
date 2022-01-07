
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct umoscom_softc {int sc_lcr; } ;
struct ucom_softc {struct umoscom_softc* sc_parent; } ;


 int UMOSCOM_LCR ;
 int UMOSCOM_LCR_BREAK ;
 int UMOSCOM_UART_REG ;
 int umoscom_cfg_write (struct umoscom_softc*,int ,int) ;

__attribute__((used)) static void
umoscom_cfg_set_break(struct ucom_softc *ucom, uint8_t onoff)
{
 struct umoscom_softc *sc = ucom->sc_parent;
 uint16_t val;

 val = sc->sc_lcr;
 if (onoff)
  val |= UMOSCOM_LCR_BREAK;

 umoscom_cfg_write(sc, UMOSCOM_LCR, val | UMOSCOM_UART_REG);
}
