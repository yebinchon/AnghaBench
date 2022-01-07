
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ecore_mcast_ramrod_params {int * mcast_obj; int * member_0; } ;
struct bxe_softc {int num_queues; int mcast_obj; int sp_state; TYPE_1__* sp_objs; } ;
struct TYPE_2__ {int mac_obj; } ;


 int BLOGE (struct bxe_softc*,char*,int) ;
 int BXE_MCAST_LOCK (struct bxe_softc*) ;
 int BXE_MCAST_UNLOCK (struct bxe_softc*) ;
 int CHIP_IS_E1 (struct bxe_softc*) ;
 int DELAY (int) ;
 int ECORE_ETH_MAC ;
 int ECORE_FILTER_RX_MODE_PENDING ;
 int ECORE_FILTER_RX_MODE_SCHED ;
 int ECORE_MCAST_CMD_DEL ;
 int ECORE_UC_LIST_MAC ;
 int FALSE ;
 scalar_t__ NIG_REG_LLH0_FUNC_EN ;
 int REG_WR (struct bxe_softc*,scalar_t__,int ) ;
 int SC_PORT (struct bxe_softc*) ;
 int TRUE ;
 int bxe_del_all_macs (struct bxe_softc*,int *,int ,int ) ;
 int bxe_drain_tx_queues (struct bxe_softc*) ;
 int bxe_func_stop (struct bxe_softc*) ;
 int bxe_func_wait_started (struct bxe_softc*) ;
 int bxe_int_disable_sync (struct bxe_softc*,int ) ;
 int bxe_interrupt_detach (struct bxe_softc*) ;
 int bxe_reset_hw (struct bxe_softc*,int ) ;
 int bxe_send_unload_done (struct bxe_softc*,int ) ;
 int bxe_send_unload_req (struct bxe_softc*,int ) ;
 int bxe_set_bit (int ,int *) ;
 int bxe_set_storm_rx_mode (struct bxe_softc*) ;
 scalar_t__ bxe_stop_queue (struct bxe_softc*,int) ;
 scalar_t__ bxe_test_bit (int ,int *) ;
 int bxe_wait_sp_comp (struct bxe_softc*,int) ;
 int ecore_config_mcast (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int ) ;

__attribute__((used)) static void
bxe_chip_cleanup(struct bxe_softc *sc,
                 uint32_t unload_mode,
                 uint8_t keep_link)
{
    int port = SC_PORT(sc);
    struct ecore_mcast_ramrod_params rparam = { ((void*)0) };
    uint32_t reset_code;
    int i, rc = 0;

    bxe_drain_tx_queues(sc);


    DELAY(1000);


    rc = bxe_del_all_macs(sc, &sc->sp_objs[0].mac_obj, ECORE_ETH_MAC, FALSE);
    if (rc < 0) {
        BLOGE(sc, "Failed to delete all ETH MACs (%d)\n", rc);
    }


    rc = bxe_del_all_macs(sc, &sc->sp_objs[0].mac_obj, ECORE_UC_LIST_MAC, TRUE);
    if (rc < 0) {
        BLOGE(sc, "Failed to delete UC MACs list (%d)\n", rc);
    }


    if (!CHIP_IS_E1(sc)) {
        REG_WR(sc, NIG_REG_LLH0_FUNC_EN + port*8, 0);
    }







    BXE_MCAST_LOCK(sc);

    if (bxe_test_bit(ECORE_FILTER_RX_MODE_PENDING, &sc->sp_state)) {
        bxe_set_bit(ECORE_FILTER_RX_MODE_SCHED, &sc->sp_state);
    } else {
        bxe_set_storm_rx_mode(sc);
    }


    rparam.mcast_obj = &sc->mcast_obj;
    rc = ecore_config_mcast(sc, &rparam, ECORE_MCAST_CMD_DEL);
    if (rc < 0) {
        BLOGE(sc, "Failed to send DEL MCAST command (%d)\n", rc);
    }

    BXE_MCAST_UNLOCK(sc);
    reset_code = bxe_send_unload_req(sc, unload_mode);





    rc = bxe_func_wait_started(sc);
    if (rc) {
        BLOGE(sc, "bxe_func_wait_started failed (%d)\n", rc);
    }





    for (i = 0; i < sc->num_queues; i++) {
        if (bxe_stop_queue(sc, i)) {
            goto unload_error;
        }
    }





    if (!bxe_wait_sp_comp(sc, ~0x0UL)) {
        BLOGE(sc, "Common slow path ramrods got stuck!(%d)\n", rc);
    }

unload_error:

    rc = bxe_func_stop(sc);
    if (rc) {
        BLOGE(sc, "Function stop failed!(%d)\n", rc);
    }


    bxe_int_disable_sync(sc, TRUE);


    bxe_interrupt_detach(sc);


    rc = bxe_reset_hw(sc, reset_code);
    if (rc) {
        BLOGE(sc, "Hardware reset failed(%d)\n", rc);
    }


    bxe_send_unload_done(sc, keep_link);
}
