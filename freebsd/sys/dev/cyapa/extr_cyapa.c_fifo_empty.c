
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa_softc {int dummy; } ;
struct cyapa_fifo {scalar_t__ rindex; scalar_t__ windex; } ;


 int CYAPA_LOCK_ASSERT (struct cyapa_softc*) ;

__attribute__((used)) static int
fifo_empty(struct cyapa_softc *sc, struct cyapa_fifo *fifo)
{

 CYAPA_LOCK_ASSERT(sc);

 return (fifo->rindex == fifo->windex);
}
