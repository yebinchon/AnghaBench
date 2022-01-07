
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_bas {int rclk; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_hwiflow; int sc_hwoflow; int sc_dev; struct uart_bas sc_bas; } ;
struct TYPE_2__ {int uc_rclk; } ;


 int CVMX_CLOCK_SCLK ;
 int FCR_ENABLE ;
 int FCR_RCV_RST ;
 int FCR_XMT_RST ;
 int MCR_DTR ;
 int MCR_RTS ;
 int REG_FCR ;
 int REG_MCR ;
 int UART_DRAIN_TRANSMITTER ;
 int UART_FLUSH_RECEIVER ;
 int UART_FLUSH_TRANSMITTER ;
 int cvmx_clock_get_rate (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 int oct16550_drain (struct uart_bas*,int ) ;
 int oct16550_flush (struct uart_bas*,int) ;
 int oct16550_probe (struct uart_bas*) ;
 int uart_barrier (struct uart_bas*) ;
 TYPE_1__ uart_oct16550_class ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
oct16550_bus_probe (struct uart_softc *sc)
{
 struct uart_bas *bas;
 int error;

 bas = &sc->sc_bas;
 bas->rclk = uart_oct16550_class.uc_rclk = cvmx_clock_get_rate(CVMX_CLOCK_SCLK);

 error = oct16550_probe(bas);
 if (error) {
  return (error);
        }

 uart_setreg(bas, REG_MCR, (MCR_DTR | MCR_RTS));






        oct16550_drain(bas, UART_DRAIN_TRANSMITTER);


 uart_setreg(bas, REG_FCR, FCR_ENABLE | FCR_XMT_RST | FCR_RCV_RST);

 uart_barrier(bas);

 oct16550_flush(bas, UART_FLUSH_RECEIVER|UART_FLUSH_TRANSMITTER);

        if (device_get_unit(sc->sc_dev)) {
             device_set_desc(sc->sc_dev, "Octeon-16550 channel 1");
        } else {
             device_set_desc(sc->sc_dev, "Octeon-16550 channel 0");
        }

 sc->sc_rxfifosz = 64;
 sc->sc_txfifosz = 64;
 return (0);
}
