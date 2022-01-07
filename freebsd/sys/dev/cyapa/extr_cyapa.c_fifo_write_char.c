
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cyapa_softc {int dummy; } ;
struct cyapa_fifo {size_t windex; scalar_t__ rindex; int * buf; } ;


 size_t CYAPA_BUFMASK ;
 scalar_t__ CYAPA_BUFSIZE ;
 int CYAPA_LOCK_ASSERT (struct cyapa_softc*) ;

__attribute__((used)) static void
fifo_write_char(struct cyapa_softc *sc, struct cyapa_fifo *fifo, uint8_t c)
{

 CYAPA_LOCK_ASSERT(sc);

 if (fifo->windex - fifo->rindex < CYAPA_BUFSIZE) {
  fifo->buf[fifo->windex & CYAPA_BUFMASK] = c;
  ++fifo->windex;
 }
}
