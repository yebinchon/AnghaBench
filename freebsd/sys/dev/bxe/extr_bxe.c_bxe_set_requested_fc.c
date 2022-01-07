
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int req_fc_auto_adv; } ;
struct bxe_softc {int mtu; TYPE_1__ link_params; } ;


 scalar_t__ CHIP_IS_E1x (struct bxe_softc*) ;
 int ELINK_FLOW_CTRL_BOTH ;
 int ELINK_FLOW_CTRL_TX ;

__attribute__((used)) static void
bxe_set_requested_fc(struct bxe_softc *sc)
{





    if (CHIP_IS_E1x(sc) && (sc->mtu > 5000)) {
        sc->link_params.req_fc_auto_adv = ELINK_FLOW_CTRL_TX;
    } else {
        sc->link_params.req_fc_auto_adv = ELINK_FLOW_CTRL_BOTH;
    }
}
