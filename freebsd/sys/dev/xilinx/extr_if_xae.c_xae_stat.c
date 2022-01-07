
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct xae_softc {scalar_t__* counters; } ;


 int KASSERT (int,char*) ;
 scalar_t__ READ8 (struct xae_softc*,int ) ;
 scalar_t__ UINT64_MAX ;
 int XAE_MAX_COUNTERS ;
 int XAE_STATCNT (int) ;

__attribute__((used)) static uint64_t
xae_stat(struct xae_softc *sc, int counter_id)
{
 uint64_t new, old;
 uint64_t delta;

 KASSERT(counter_id < XAE_MAX_COUNTERS,
  ("counter %d is out of range", counter_id));

 new = READ8(sc, XAE_STATCNT(counter_id));
 old = sc->counters[counter_id];

 if (new >= old)
  delta = new - old;
 else
  delta = UINT64_MAX - old + new;
 sc->counters[counter_id] = new;

 return (delta);
}
