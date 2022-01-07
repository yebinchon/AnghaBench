
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwsig; struct uart_bas sc_bas; int sc_dev; } ;
struct oct16550_softc {int mcr; int fcr; int ier; } ;


 int FCR_ENABLE ;
 int FCR_RX_HIGH ;
 int IER_EMSC ;
 int IER_ERLS ;
 int IER_ERXRDY ;
 int MCR_DTR ;
 int MCR_RTS ;
 int REG_FCR ;
 int REG_IER ;
 int REG_MCR ;
 int SER_DTR ;
 int SER_RTS ;
 int UART_DRAIN_TRANSMITTER ;
 int UART_FLUSH_RECEIVER ;
 int UART_FLUSH_TRANSMITTER ;
 int device_get_unit (int ) ;
 int oct16550_bus_flush (struct uart_softc*,int) ;
 int oct16550_bus_getsig (struct uart_softc*) ;
 int oct16550_clrint (struct uart_bas*) ;
 int oct16550_drain (struct uart_bas*,int ) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
oct16550_bus_attach (struct uart_softc *sc)
{
 struct oct16550_softc *oct16550 = (struct oct16550_softc*)sc;
 struct uart_bas *bas;
        int unit;

        unit = device_get_unit(sc->sc_dev);
 bas = &sc->sc_bas;

        oct16550_drain(bas, UART_DRAIN_TRANSMITTER);
 oct16550->mcr = uart_getreg(bas, REG_MCR);
 oct16550->fcr = FCR_ENABLE | FCR_RX_HIGH;
 uart_setreg(bas, REG_FCR, oct16550->fcr);
 uart_barrier(bas);
 oct16550_bus_flush(sc, UART_FLUSH_RECEIVER|UART_FLUSH_TRANSMITTER);

 if (oct16550->mcr & MCR_DTR)
  sc->sc_hwsig |= SER_DTR;
 if (oct16550->mcr & MCR_RTS)
  sc->sc_hwsig |= SER_RTS;
 oct16550_bus_getsig(sc);

 oct16550_clrint(bas);
 oct16550->ier = uart_getreg(bas, REG_IER) & 0xf0;
 oct16550->ier |= IER_EMSC | IER_ERLS | IER_ERXRDY;
 uart_setreg(bas, REG_IER, oct16550->ier);
 uart_barrier(bas);

 return (0);
}
