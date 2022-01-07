
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rfd; scalar_t__ opened; } ;
struct fifo {int size; } ;
struct uart_softc {int mev; TYPE_1__ tty; struct fifo rxfifo; } ;
typedef int ssize_t ;
typedef int flushbuf ;


 int assert (int) ;
 int bzero (struct fifo*,int) ;
 int mevent_enable (int ) ;
 int read (int ,char*,int) ;

__attribute__((used)) static void
rxfifo_reset(struct uart_softc *sc, int size)
{
 char flushbuf[32];
 struct fifo *fifo;
 ssize_t nread;
 int error;

 fifo = &sc->rxfifo;
 bzero(fifo, sizeof(struct fifo));
 fifo->size = size;

 if (sc->tty.opened) {



  while (1) {
   nread = read(sc->tty.rfd, flushbuf, sizeof(flushbuf));
   if (nread != sizeof(flushbuf))
    break;
  }





  error = mevent_enable(sc->mev);
  assert(error == 0);
 }
}
