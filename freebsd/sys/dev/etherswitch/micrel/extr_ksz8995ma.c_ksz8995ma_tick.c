
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz8995ma_softc {int callout_tick; } ;


 int callout_reset (int *,int ,void (*) (void*),struct ksz8995ma_softc*) ;
 int hz ;
 int ksz8995ma_miipollstat (struct ksz8995ma_softc*) ;

__attribute__((used)) static void
ksz8995ma_tick(void *arg)
{
 struct ksz8995ma_softc *sc;

 sc = arg;

 ksz8995ma_miipollstat(sc);
 callout_reset(&sc->callout_tick, hz, ksz8995ma_tick, sc);
}
