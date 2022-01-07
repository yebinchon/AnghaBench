
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int sc_hwiflow; int sc_hwoflow; int sc_dev; int * sc_sysdev; struct uart_bas sc_bas; } ;
struct ns8250_softc {int ier_mask; } ;


 int DELAY (int) ;
 int FCR_ENABLE ;
 int FCR_RCV_RST ;
 int FCR_UART_ON ;
 int FCR_XMT_RST ;
 int IIR_FIFO_MASK ;
 int LSR_OE ;
 int LSR_TEMT ;
 int MCR_DTR ;
 int MCR_IE ;
 int MCR_LOOPBACK ;
 int MCR_RTS ;
 int REG_DATA ;
 int REG_FCR ;
 int REG_IER ;
 int REG_IIR ;
 int REG_LSR ;
 int REG_MCR ;
 int UART_DRAIN_RECEIVER ;
 int UART_DRAIN_TRANSMITTER ;
 int UART_FLUSH_RECEIVER ;
 int UART_FLUSH_TRANSMITTER ;
 int UART_PARITY_NONE ;
 int device_set_desc (int ,char*) ;
 int ns8250_delay (struct uart_bas*) ;
 int ns8250_drain (struct uart_bas*,int) ;
 int ns8250_flush (struct uart_bas*,int) ;
 int ns8250_init (struct uart_bas*,int,int,int,int ) ;
 int ns8250_probe (struct uart_bas*) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

int
ns8250_bus_probe(struct uart_softc *sc)
{
 struct ns8250_softc *ns8250;
 struct uart_bas *bas;
 int count, delay, error, limit;
 uint8_t lsr, mcr, ier;
 uint8_t val;

 ns8250 = (struct ns8250_softc *)sc;
 bas = &sc->sc_bas;

 error = ns8250_probe(bas);
 if (error)
  return (error);

 mcr = MCR_IE;
 if (sc->sc_sysdev == ((void*)0)) {

  ns8250_init(bas, 115200, 8, 1, UART_PARITY_NONE);
 } else
  mcr |= MCR_DTR | MCR_RTS;

 error = ns8250_drain(bas, UART_DRAIN_TRANSMITTER);
 if (error)
  return (error);







 uart_setreg(bas, REG_MCR, MCR_LOOPBACK | MCR_IE | MCR_DTR | MCR_RTS);
 uart_barrier(bas);






 val = FCR_ENABLE;



 uart_setreg(bas, REG_FCR, val);
 uart_barrier(bas);
 if (!(uart_getreg(bas, REG_IIR) & IIR_FIFO_MASK)) {




  uart_setreg(bas, REG_MCR, mcr);
  uart_barrier(bas);
  sc->sc_rxfifosz = sc->sc_txfifosz = 1;
  device_set_desc(sc->sc_dev, "8250 or 16450 or compatible");
  return (0);
 }

 val = FCR_ENABLE | FCR_XMT_RST | FCR_RCV_RST;



 uart_setreg(bas, REG_FCR, val);
 uart_barrier(bas);

 count = 0;
 delay = ns8250_delay(bas);


 error = ns8250_drain(bas, UART_DRAIN_RECEIVER|UART_DRAIN_TRANSMITTER);
 if (error) {
  uart_setreg(bas, REG_MCR, mcr);
  val = 0;



  uart_setreg(bas, REG_FCR, val);
  uart_barrier(bas);
  goto describe;
 }
 do {
  uart_setreg(bas, REG_DATA, 0);
  uart_barrier(bas);
  count++;

  limit = 30;
  lsr = 0;




  while (((lsr |= uart_getreg(bas, REG_LSR)) & LSR_TEMT) == 0 &&
      --limit)
   DELAY(delay);
  if (limit == 0) {
   ier = uart_getreg(bas, REG_IER) & ns8250->ier_mask;
   uart_setreg(bas, REG_IER, ier);
   uart_setreg(bas, REG_MCR, mcr);
   val = 0;



   uart_setreg(bas, REG_FCR, val);
   uart_barrier(bas);
   count = 0;
   goto describe;
  }
 } while ((lsr & LSR_OE) == 0 && count < 260);
 count--;

 uart_setreg(bas, REG_MCR, mcr);


 ns8250_flush(bas, UART_FLUSH_RECEIVER|UART_FLUSH_TRANSMITTER);

 describe:
 if (count >= 14 && count <= 16) {
  sc->sc_rxfifosz = 16;
  device_set_desc(sc->sc_dev, "16550 or compatible");
 } else if (count >= 28 && count <= 32) {
  sc->sc_rxfifosz = 32;
  device_set_desc(sc->sc_dev, "16650 or compatible");
 } else if (count >= 56 && count <= 64) {
  sc->sc_rxfifosz = 64;
  device_set_desc(sc->sc_dev, "16750 or compatible");
 } else if (count >= 112 && count <= 128) {
  sc->sc_rxfifosz = 128;
  device_set_desc(sc->sc_dev, "16950 or compatible");
 } else if (count >= 224 && count <= 256) {
  sc->sc_rxfifosz = 256;
  device_set_desc(sc->sc_dev, "16x50 with 256 byte FIFO");
 } else {
  sc->sc_rxfifosz = 16;
  device_set_desc(sc->sc_dev,
      "Non-standard ns8250 class UART with FIFOs");
 }






 sc->sc_txfifosz = 16;
 return (0);
}
