
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {unsigned int evq_count; int * ev_stats; struct sfxge_evq** evq; scalar_t__ ev_stats_update_time; } ;
struct sfxge_evq {scalar_t__* stats; } ;
typedef scalar_t__ clock_t ;


 unsigned int EV_NQSTATS ;
 int SFXGE_ADAPTER_LOCK (struct sfxge_softc*) ;
 int SFXGE_ADAPTER_UNLOCK (struct sfxge_softc*) ;
 scalar_t__ hz ;
 int memset (int *,int ,int) ;
 int sfxge_evq_stat_update (struct sfxge_evq*) ;
 scalar_t__ ticks ;

__attribute__((used)) static void
sfxge_ev_stat_update(struct sfxge_softc *sc)
{
 struct sfxge_evq *evq;
 unsigned int index;
 clock_t now;
 unsigned int id;

 SFXGE_ADAPTER_LOCK(sc);

 now = ticks;
 if ((unsigned int)(now - sc->ev_stats_update_time) < (unsigned int)hz)
  goto out;

 sc->ev_stats_update_time = now;

 memset(sc->ev_stats, 0, sizeof(sc->ev_stats));


 for (index = 0; index < sc->evq_count; index++) {
  evq = sc->evq[index];
  sfxge_evq_stat_update(evq);
  for (id = 0; id < EV_NQSTATS; id++)
   sc->ev_stats[id] += evq->stats[id];
 }
out:
 SFXGE_ADAPTER_UNLOCK(sc);
}
