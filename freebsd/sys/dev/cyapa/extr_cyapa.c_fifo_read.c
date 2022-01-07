
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa_softc {int dummy; } ;
struct cyapa_fifo {size_t rindex; char* buf; } ;


 size_t CYAPA_BUFMASK ;
 size_t CYAPA_BUFSIZE ;
 int CYAPA_LOCK_ASSERT (struct cyapa_softc*) ;
 int printf (char*) ;

__attribute__((used)) static char *
fifo_read(struct cyapa_softc *sc, struct cyapa_fifo *fifo, size_t n)
{
 char *ptr;

 CYAPA_LOCK_ASSERT(sc);
 if (n > (CYAPA_BUFSIZE - (fifo->rindex & CYAPA_BUFMASK))) {
  printf("fifo_read: overflow\n");
  return (fifo->buf);
 }
 ptr = fifo->buf + (fifo->rindex & CYAPA_BUFMASK);
 fifo->rindex += n;

 return (ptr);
}
