
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmctx {int dummy; } ;
struct lpc_uart_softc {int iobase; int uart_softc; } ;


 int uart_read (int ,int) ;
 int uart_write (int ,int,int) ;

__attribute__((used)) static int
lpc_uart_io_handler(struct vmctx *ctx, int vcpu, int in, int port, int bytes,
      uint32_t *eax, void *arg)
{
 int offset;
 struct lpc_uart_softc *sc = arg;

 offset = port - sc->iobase;

 switch (bytes) {
 case 1:
  if (in)
   *eax = uart_read(sc->uart_softc, offset);
  else
   uart_write(sc->uart_softc, offset, *eax);
  break;
 case 2:
  if (in) {
   *eax = uart_read(sc->uart_softc, offset);
   *eax |= uart_read(sc->uart_softc, offset + 1) << 8;
  } else {
   uart_write(sc->uart_softc, offset, *eax);
   uart_write(sc->uart_softc, offset + 1, *eax >> 8);
  }
  break;
 default:
  return (-1);
 }

 return (0);
}
