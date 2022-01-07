
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct cyapa_softc {int dummy; } ;
struct cyapa_fifo {size_t rindex; size_t windex; scalar_t__* buf; } ;


 size_t CYAPA_BUFMASK ;
 int CYAPA_LOCK_ASSERT (struct cyapa_softc*) ;
 int printf (char*) ;

__attribute__((used)) static uint8_t
fifo_read_char(struct cyapa_softc *sc, struct cyapa_fifo *fifo)
{
 uint8_t c;

 CYAPA_LOCK_ASSERT(sc);

 if (fifo->rindex == fifo->windex) {
  printf("fifo_read_char: overflow\n");
  c = 0;
 } else {
  c = fifo->buf[fifo->rindex & CYAPA_BUFMASK];
  ++fifo->rindex;
 }
 return (c);
}
