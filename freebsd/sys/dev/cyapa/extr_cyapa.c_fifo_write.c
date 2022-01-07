
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa_softc {int dummy; } ;
struct cyapa_fifo {char* buf; int windex; } ;


 int CYAPA_BUFMASK ;
 int CYAPA_LOCK_ASSERT (struct cyapa_softc*) ;

__attribute__((used)) static char *
fifo_write(struct cyapa_softc *sc, struct cyapa_fifo *fifo, size_t n)
{
 char *ptr;

 CYAPA_LOCK_ASSERT(sc);

 ptr = fifo->buf + (fifo->windex & CYAPA_BUFMASK);
 fifo->windex += n;

 return (ptr);
}
