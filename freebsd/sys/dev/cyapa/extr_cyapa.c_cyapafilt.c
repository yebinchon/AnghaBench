
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_hook; } ;
struct cyapa_softc {scalar_t__ data_signal; int rfifo; } ;


 int cyapa_lock (struct cyapa_softc*) ;
 int cyapa_unlock (struct cyapa_softc*) ;
 scalar_t__ fifo_ready (struct cyapa_softc*,int *) ;

__attribute__((used)) static int
cyapafilt(struct knote *kn, long hint)
{
 struct cyapa_softc *sc;
 int ready;

 sc = (struct cyapa_softc *)kn->kn_hook;

 cyapa_lock(sc);
 ready = fifo_ready(sc, &sc->rfifo) || sc->data_signal;
 cyapa_unlock(sc);

 return (ready);
}
