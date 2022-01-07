
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ opened; } ;
struct fifo {int num; int size; size_t windex; int * buf; } ;
struct uart_softc {int mev; TYPE_1__ tty; struct fifo rxfifo; } ;


 int assert (int) ;
 int mevent_disable (int ) ;
 int rxfifo_available (struct uart_softc*) ;

__attribute__((used)) static int
rxfifo_putchar(struct uart_softc *sc, uint8_t ch)
{
 struct fifo *fifo;
 int error;

 fifo = &sc->rxfifo;

 if (fifo->num < fifo->size) {
  fifo->buf[fifo->windex] = ch;
  fifo->windex = (fifo->windex + 1) % fifo->size;
  fifo->num++;
  if (!rxfifo_available(sc)) {
   if (sc->tty.opened) {



    error = mevent_disable(sc->mev);
    assert(error == 0);
   }
  }
  return (0);
 } else
  return (-1);
}
