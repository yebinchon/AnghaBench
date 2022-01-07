
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ duplex; int flow_ctrl; int link_up; } ;
struct bxe_softc {int flags; TYPE_1__ link_vars; } ;
struct bxe_link_report_data {int link_report_flags; int line_speed; } ;


 int BXE_LINK_REPORT_FULL_DUPLEX ;
 int BXE_LINK_REPORT_LINK_DOWN ;
 int BXE_LINK_REPORT_RX_FC_ON ;
 int BXE_LINK_REPORT_TX_FC_ON ;
 int BXE_MF_FUNC_DIS ;
 scalar_t__ DUPLEX_FULL ;
 int ELINK_FLOW_CTRL_RX ;
 int ELINK_FLOW_CTRL_TX ;
 int bxe_get_mf_speed (struct bxe_softc*) ;
 int bxe_set_bit (int ,int *) ;
 int memset (struct bxe_link_report_data*,int ,int) ;

__attribute__((used)) static void
bxe_fill_report_data(struct bxe_softc *sc,
                     struct bxe_link_report_data *data)
{
    uint16_t line_speed = bxe_get_mf_speed(sc);

    memset(data, 0, sizeof(*data));


    data->line_speed = line_speed;


    if (!sc->link_vars.link_up || (sc->flags & BXE_MF_FUNC_DIS)) {
        bxe_set_bit(BXE_LINK_REPORT_LINK_DOWN, &data->link_report_flags);
    }


    if (sc->link_vars.duplex == DUPLEX_FULL) {
        bxe_set_bit(BXE_LINK_REPORT_FULL_DUPLEX, &data->link_report_flags);
    }


    if (sc->link_vars.flow_ctrl & ELINK_FLOW_CTRL_RX) {
        bxe_set_bit(BXE_LINK_REPORT_RX_FC_ON, &data->link_report_flags);
    }


    if (sc->link_vars.flow_ctrl & ELINK_FLOW_CTRL_TX) {
        bxe_set_bit(BXE_LINK_REPORT_TX_FC_ON, &data->link_report_flags);
    }
}
