
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunkbd_softc {scalar_t__ sc_polling; int * sc_sysdev; int * sc_uart; scalar_t__ sc_repeating; scalar_t__* sc_buffered_char; } ;
typedef int keyboard_t ;


 int FALSE ;
 int KBD_IS_ACTIVE (int *) ;
 int TRUE ;
 int uart_rx_empty (int *) ;
 scalar_t__ uart_rxready (int *) ;

__attribute__((used)) static int
sunkbd_check(keyboard_t *kbd)
{
 struct sunkbd_softc *sc;

 if (!KBD_IS_ACTIVE(kbd))
  return (FALSE);

 sc = (struct sunkbd_softc *)kbd;






 if (sc->sc_repeating)
  return (TRUE);

 if (sc->sc_uart != ((void*)0) && !uart_rx_empty(sc->sc_uart))
  return (TRUE);

 if (sc->sc_polling != 0 && sc->sc_sysdev != ((void*)0) &&
     uart_rxready(sc->sc_sysdev))
  return (TRUE);

 return (FALSE);
}
