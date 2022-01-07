
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_func_state_params {int cmd; int ramrod_flags; int * f_obj; int * member_0; } ;
struct TYPE_2__ {int pmf; } ;
struct bxe_softc {int func_obj; TYPE_1__ port; } ;


 int BLOGE (struct bxe_softc*,char*) ;
 int DELAY (int) ;
 int ECORE_F_CMD_TX_START ;
 int ECORE_F_CMD_TX_STOP ;
 scalar_t__ ECORE_F_STATE_STARTED ;
 int RAMROD_DRV_CLR_ONLY ;
 int bxe_set_bit (int ,int *) ;
 scalar_t__ ecore_func_get_state (struct bxe_softc*,int *) ;
 int ecore_func_state_change (struct bxe_softc*,struct ecore_func_state_params*) ;

__attribute__((used)) static int
bxe_func_wait_started(struct bxe_softc *sc)
{
    int tout = 50;

    if (!sc->port.pmf) {
        return (0);
    }
    while (ecore_func_get_state(sc, &sc->func_obj) !=
           ECORE_F_STATE_STARTED && tout--) {
        DELAY(20000);
    }

    if (ecore_func_get_state(sc, &sc->func_obj) != ECORE_F_STATE_STARTED) {




        struct ecore_func_state_params func_params = { ((void*)0) };

        BLOGE(sc, "Unexpected function state! "
                  "Forcing STARTED-->TX_STOPPED-->STARTED\n");

        func_params.f_obj = &sc->func_obj;
        bxe_set_bit(RAMROD_DRV_CLR_ONLY, &func_params.ramrod_flags);


        func_params.cmd = ECORE_F_CMD_TX_STOP;
        ecore_func_state_change(sc, &func_params);


        func_params.cmd = ECORE_F_CMD_TX_START;
        return (ecore_func_state_change(sc, &func_params));
    }

    return (0);
}
