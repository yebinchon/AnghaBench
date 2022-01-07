
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rfd; } ;
struct uart_softc {int mcr; int mtx; TYPE_1__ tty; } ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int EVF_READ ;
 int MCR_LOOPBACK ;
 int assert (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ rxfifo_available (struct uart_softc*) ;
 int rxfifo_putchar (struct uart_softc*,int) ;
 int ttyread (TYPE_1__*) ;
 int uart_toggle_intr (struct uart_softc*) ;

__attribute__((used)) static void
uart_drain(int fd, enum ev_type ev, void *arg)
{
 struct uart_softc *sc;
 int ch;

 sc = arg;

 assert(fd == sc->tty.rfd);
 assert(ev == EVF_READ);






 pthread_mutex_lock(&sc->mtx);

 if ((sc->mcr & MCR_LOOPBACK) != 0) {
  (void) ttyread(&sc->tty);
 } else {
  while (rxfifo_available(sc) &&
         ((ch = ttyread(&sc->tty)) != -1)) {
   rxfifo_putchar(sc, ch);
  }
  uart_toggle_intr(sc);
 }

 pthread_mutex_unlock(&sc->mtx);
}
