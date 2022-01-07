
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int ifp; int chip_tq_flags; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int BXE_CORE_LOCK (struct bxe_softc*) ;
 int BXE_CORE_UNLOCK (struct bxe_softc*) ;

 int DBG_LOAD ;
 int IFF_DRV_RUNNING ;
 long atomic_load_acq_long (int *) ;
 int bxe_init_locked (struct bxe_softc*) ;
 int bxe_periodic_stop (struct bxe_softc*) ;
 int bxe_stop_locked (struct bxe_softc*) ;
 int if_getdrvflags (int ) ;

__attribute__((used)) static void
bxe_handle_chip_tq(void *context,
                   int pending)
{
    struct bxe_softc *sc = (struct bxe_softc *)context;
    long work = atomic_load_acq_long(&sc->chip_tq_flags);

    switch (work)
    {

    case 128:
        if (if_getdrvflags(sc->ifp) & IFF_DRV_RUNNING) {

            BLOGD(sc, DBG_LOAD, "Restarting the interface...\n");
            bxe_periodic_stop(sc);
            BXE_CORE_LOCK(sc);
            bxe_stop_locked(sc);
            bxe_init_locked(sc);
            BXE_CORE_UNLOCK(sc);
        }
        break;

    default:
        break;
    }
}
