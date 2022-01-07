
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {scalar_t__ state; int * ifp; int ifmedia; int sp_err_timeout_task; int * chip_tq; int chip_tq_task; int chip_tq_flags; } ;
typedef int * if_t ;
typedef int device_t ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int BXE_CORE_LOCK (struct bxe_softc*) ;
 int BXE_CORE_UNLOCK (struct bxe_softc*) ;
 scalar_t__ BXE_STATE_CLOSED ;
 scalar_t__ BXE_STATE_DISABLED ;
 int CHIP_TQ_NONE ;
 int DBG_LOAD ;
 int EBUSY ;
 int TRUE ;
 int UNLOAD_CLOSE ;
 int atomic_store_rel_long (int *,int ) ;
 int bxe_deallocate_bars (struct bxe_softc*) ;
 int bxe_del_cdev (struct bxe_softc*) ;
 int bxe_destroy_fp_mutexs (struct bxe_softc*) ;
 int bxe_free_buf_rings (struct bxe_softc*) ;
 int bxe_free_hsi_mem (struct bxe_softc*) ;
 int bxe_free_ilt_mem (struct bxe_softc*) ;
 int bxe_interrupt_free (struct bxe_softc*) ;
 int bxe_nic_unload (struct bxe_softc*,int ,int ) ;
 int bxe_periodic_stop (struct bxe_softc*) ;
 int bxe_release_mutexes (struct bxe_softc*) ;
 struct bxe_softc* device_get_softc (int ) ;
 int ether_ifdetach (int *) ;
 int if_free (int *) ;
 scalar_t__ if_vlantrunkinuse (int *) ;
 int ifmedia_removeall (int *) ;
 int pci_disable_busmaster (int ) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_drain_timeout (int ,int *) ;
 int taskqueue_free (int *) ;
 int taskqueue_thread ;

__attribute__((used)) static int
bxe_detach(device_t dev)
{
    struct bxe_softc *sc;
    if_t ifp;

    sc = device_get_softc(dev);

    BLOGD(sc, DBG_LOAD, "Starting detach...\n");

    ifp = sc->ifp;
    if (ifp != ((void*)0) && if_vlantrunkinuse(ifp)) {
        BLOGE(sc, "Cannot detach while VLANs are in use.\n");
        return(EBUSY);
    }

    bxe_del_cdev(sc);


    bxe_periodic_stop(sc);


    atomic_store_rel_long(&sc->chip_tq_flags, CHIP_TQ_NONE);
    if (sc->chip_tq) {
        taskqueue_drain(sc->chip_tq, &sc->chip_tq_task);
        taskqueue_free(sc->chip_tq);
        sc->chip_tq = ((void*)0);
        taskqueue_drain_timeout(taskqueue_thread,
            &sc->sp_err_timeout_task);
    }


    if (sc->state != BXE_STATE_CLOSED) {
        BXE_CORE_LOCK(sc);
        bxe_nic_unload(sc, UNLOAD_CLOSE, TRUE);
        sc->state = BXE_STATE_DISABLED;
        BXE_CORE_UNLOCK(sc);
    }


    if (ifp != ((void*)0)) {
        ether_ifdetach(ifp);
    }
    ifmedia_removeall(&sc->ifmedia);




    bxe_free_hsi_mem(sc);


    bxe_free_ilt_mem(sc);

    bxe_free_buf_rings(sc);


    bxe_interrupt_free(sc);


    bxe_destroy_fp_mutexs(sc);
    bxe_release_mutexes(sc);



    bxe_deallocate_bars(sc);


    if (sc->ifp != ((void*)0)) {
        if_free(sc->ifp);
    }

    pci_disable_busmaster(dev);

    return (0);
}
