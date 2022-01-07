
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa_softc {int dummy; } ;
struct cyapa_fifo {scalar_t__ windex; scalar_t__ rindex; } ;


 int CYAPA_LOCK_ASSERT (struct cyapa_softc*) ;

__attribute__((used)) static void
fifo_reset(struct cyapa_softc *sc, struct cyapa_fifo *fifo)
{

 CYAPA_LOCK_ASSERT(sc);

 fifo->rindex = 0;
 fifo->windex = 0;
}
