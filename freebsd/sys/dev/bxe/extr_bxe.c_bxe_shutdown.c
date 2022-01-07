
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {scalar_t__ state; } ;
typedef int device_t ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int BXE_CORE_LOCK (struct bxe_softc*) ;
 int BXE_CORE_UNLOCK (struct bxe_softc*) ;
 scalar_t__ BXE_STATE_CLOSED ;
 int DBG_LOAD ;
 int FALSE ;
 int UNLOAD_NORMAL ;
 int bxe_nic_unload (struct bxe_softc*,int ,int ) ;
 int bxe_periodic_stop (struct bxe_softc*) ;
 struct bxe_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bxe_shutdown(device_t dev)
{
    struct bxe_softc *sc;

    sc = device_get_softc(dev);

    BLOGD(sc, DBG_LOAD, "Starting shutdown...\n");


    bxe_periodic_stop(sc);

    if (sc->state != BXE_STATE_CLOSED) {
     BXE_CORE_LOCK(sc);
     bxe_nic_unload(sc, UNLOAD_NORMAL, FALSE);
     BXE_CORE_UNLOCK(sc);
    }

    return (0);
}
