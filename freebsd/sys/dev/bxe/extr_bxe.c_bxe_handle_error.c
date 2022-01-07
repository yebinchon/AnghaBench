
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_up; } ;
struct bxe_softc {scalar_t__ recovery_state; scalar_t__ state; scalar_t__ error_status; int unit; int ifp; TYPE_1__ link_vars; } ;


 int BLOGI (struct bxe_softc*,char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ BXE_RECOVERY_INIT ;
 scalar_t__ BXE_RECOVERY_WAIT ;
 scalar_t__ BXE_STATE_OPEN ;
 int LINK_STATE_DOWN ;
 int bxe_int_disable (struct bxe_softc*) ;
 int bxe_parity_recover (struct bxe_softc*) ;
 int if_link_state_change (int ,int ) ;

void
bxe_handle_error(struct bxe_softc * sc)
{

    if(sc->recovery_state == BXE_RECOVERY_WAIT) {
        return;
    }
    if(sc->error_status) {
        if (sc->state == BXE_STATE_OPEN) {
            bxe_int_disable(sc);
        }
        if (sc->link_vars.link_up) {
            if_link_state_change(sc->ifp, LINK_STATE_DOWN);
        }
        sc->recovery_state = BXE_RECOVERY_INIT;
        BLOGI(sc, "bxe%d: Recovery started errors 0x%x recovery state 0x%x\n",
            sc->unit, sc->error_status, sc->recovery_state);
        bxe_parity_recover(sc);
   }
}
