
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct bxe_softc {scalar_t__ state; scalar_t__ recovery_state; int ifp; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int BLOGI (struct bxe_softc*,char*) ;
 int BXE_CORE_LOCK_ASSERT (struct bxe_softc*) ;
 scalar_t__ BXE_RECOVERY_DONE ;
 scalar_t__ BXE_RECOVERY_FAILED ;
 scalar_t__ BXE_STATE_ERROR ;
 int DBG_LOAD ;
 int ENXIO ;
 scalar_t__ FALSE ;
 int IFF_DRV_RUNNING ;
 scalar_t__ IS_PF (struct bxe_softc*) ;
 int LOAD_OPEN ;
 int PCI_PM_D0 ;
 int PCI_PM_D3hot ;
 int SC_PATH (struct bxe_softc*) ;
 int TRUE ;
 scalar_t__ bxe_chk_parity_attn (struct bxe_softc*,scalar_t__*,int ) ;
 scalar_t__ bxe_get_load_status (struct bxe_softc*,int) ;
 int bxe_leader_reset (struct bxe_softc*) ;
 int bxe_nic_load (struct bxe_softc*,int ) ;
 int bxe_reset_is_done (struct bxe_softc*,int) ;
 int bxe_set_power_state (struct bxe_softc*,int ) ;
 int bxe_set_reset_global (struct bxe_softc*) ;
 scalar_t__ bxe_trylock_leader_lock (struct bxe_softc*) ;
 int if_getdrvflags (int ) ;
 int if_setdrvflagbits (int ,int ,int) ;

__attribute__((used)) static int
bxe_init_locked(struct bxe_softc *sc)
{
    int other_engine = SC_PATH(sc) ? 0 : 1;
    uint8_t other_load_status, load_status;
    uint8_t global = FALSE;
    int rc;

    BXE_CORE_LOCK_ASSERT(sc);


    if (if_getdrvflags(sc->ifp) & IFF_DRV_RUNNING) {
        BLOGD(sc, DBG_LOAD, "Init called while driver is running!\n");
        return (0);
    }

    if((sc->state == BXE_STATE_ERROR) &&
        (sc->recovery_state == BXE_RECOVERY_FAILED)) {
        BLOGE(sc, "Initialization not done, "
                  "as previous recovery failed."
                  "Reboot/Power-cycle the system\n" );
        return (ENXIO);
    }


    bxe_set_power_state(sc, PCI_PM_D0);







    if (IS_PF(sc)) {
        other_load_status = bxe_get_load_status(sc, other_engine);
        load_status = bxe_get_load_status(sc, SC_PATH(sc));

        if (!bxe_reset_is_done(sc, SC_PATH(sc)) ||
            bxe_chk_parity_attn(sc, &global, TRUE)) {
            do {





                if (global) {
                    bxe_set_reset_global(sc);
                }






                if ((!load_status && (!global || !other_load_status)) &&
                    bxe_trylock_leader_lock(sc) && !bxe_leader_reset(sc)) {
                    BLOGI(sc, "Recovered during init\n");
                    break;
                }


                bxe_set_power_state(sc, PCI_PM_D3hot);
                sc->recovery_state = BXE_RECOVERY_FAILED;

                BLOGE(sc, "Recovery flow hasn't properly "
                          "completed yet, try again later. "
                          "If you still see this message after a "
                          "few retries then power cycle is required.\n");

                rc = ENXIO;
                goto bxe_init_locked_done;
            } while (0);
        }
    }

    sc->recovery_state = BXE_RECOVERY_DONE;

    rc = bxe_nic_load(sc, LOAD_OPEN);

bxe_init_locked_done:

    if (rc) {

        BLOGE(sc, "Initialization failed, "
                  "stack notified driver is NOT running!\n");
 if_setdrvflagbits(sc->ifp, 0, IFF_DRV_RUNNING);
    }

    return (rc);
}
