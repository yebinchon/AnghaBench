
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int periodic_callout; int periodic_flags; } ;


 int PERIODIC_GO ;
 int atomic_store_rel_long (int *,int ) ;
 int bxe_periodic_callout_func ;
 int callout_reset (int *,int ,int ,struct bxe_softc*) ;
 int hz ;

__attribute__((used)) static void
bxe_periodic_start(struct bxe_softc *sc)
{
    atomic_store_rel_long(&sc->periodic_flags, PERIODIC_GO);
    callout_reset(&sc->periodic_callout, hz, bxe_periodic_callout_func, sc);
}
