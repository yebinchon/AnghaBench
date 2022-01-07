
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct cyapa_softc {TYPE_1__ selinfo; scalar_t__ isselect; scalar_t__ blocked; int rfifo; scalar_t__ data_signal; } ;


 int CYAPA_LOCK_ASSERT (struct cyapa_softc*) ;
 int KNOTE_LOCKED (int *,int ) ;
 int fifo_empty (struct cyapa_softc*,int *) ;
 int selwakeup (TYPE_1__*) ;
 int wakeup (scalar_t__*) ;

__attribute__((used)) static void
cyapa_notify(struct cyapa_softc *sc)
{

 CYAPA_LOCK_ASSERT(sc);

 if (sc->data_signal || !fifo_empty(sc, &sc->rfifo)) {
  KNOTE_LOCKED(&sc->selinfo.si_note, 0);
  if (sc->blocked || sc->isselect) {
   if (sc->blocked) {
       sc->blocked = 0;
       wakeup(&sc->blocked);
   }
   if (sc->isselect) {
       sc->isselect = 0;
       selwakeup(&sc->selinfo);
   }
  }
 }
}
