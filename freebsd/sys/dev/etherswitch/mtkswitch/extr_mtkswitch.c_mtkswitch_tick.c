
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtkswitch_softc {int callout_tick; } ;


 int callout_reset (int *,int ,void (*) (void*),struct mtkswitch_softc*) ;
 int hz ;
 int mtkswitch_miipollstat (struct mtkswitch_softc*) ;

__attribute__((used)) static void
mtkswitch_tick(void *arg)
{
 struct mtkswitch_softc *sc = arg;

 mtkswitch_miipollstat(sc);
 callout_reset(&sc->callout_tick, hz, mtkswitch_tick, sc);
}
