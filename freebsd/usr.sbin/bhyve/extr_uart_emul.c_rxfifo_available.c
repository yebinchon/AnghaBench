
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {scalar_t__ num; scalar_t__ size; } ;
struct uart_softc {struct fifo rxfifo; } ;



__attribute__((used)) static int
rxfifo_available(struct uart_softc *sc)
{
 struct fifo *fifo;

 fifo = &sc->rxfifo;
 return (fifo->num < fifo->size);
}
