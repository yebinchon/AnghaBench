
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int periodic_callout; int periodic_flags; } ;


 int PERIODIC_STOP ;
 int atomic_store_rel_long (int *,int ) ;
 int callout_drain (int *) ;

__attribute__((used)) static void
bxe_periodic_stop(struct bxe_softc *sc)
{
    atomic_store_rel_long(&sc->periodic_flags, PERIODIC_STOP);
    callout_drain(&sc->periodic_callout);
}
