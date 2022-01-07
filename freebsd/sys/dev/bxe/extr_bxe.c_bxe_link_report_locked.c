
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ link_report_flags; } ;
struct bxe_softc {int ifp; TYPE_1__ last_reported_link; int link_cnt; } ;
struct bxe_link_report_data {int line_speed; scalar_t__ link_report_flags; } ;
typedef int cur_data ;


 int BLOGI (struct bxe_softc*,char*,int ,char const*,char const*) ;
 int BXE_LINK_REPORT_FULL_DUPLEX ;
 int BXE_LINK_REPORT_LINK_DOWN ;
 int BXE_LINK_REPORT_RX_FC_ON ;
 int BXE_LINK_REPORT_TX_FC_ON ;
 int CHIP_IS_E1 (struct bxe_softc*) ;
 int ELINK_DEBUG_P0 (struct bxe_softc*,char*) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int ) ;
 int ELINK_DEBUG_P2 (struct bxe_softc*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ IS_PF (struct bxe_softc*) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int bxe_fill_report_data (struct bxe_softc*,struct bxe_link_report_data*) ;
 int bxe_read_mf_cfg (struct bxe_softc*) ;
 scalar_t__ bxe_test_and_clear_bit (int ,scalar_t__*) ;
 scalar_t__ bxe_test_bit (int ,scalar_t__*) ;
 int if_link_state_change (int ,int ) ;
 int memcmp (struct bxe_link_report_data*,TYPE_1__*,int) ;
 int memcpy (TYPE_1__*,struct bxe_link_report_data*,int) ;

__attribute__((used)) static void
bxe_link_report_locked(struct bxe_softc *sc)
{
    struct bxe_link_report_data cur_data;


    if (IS_PF(sc) && !CHIP_IS_E1(sc)) {
        bxe_read_mf_cfg(sc);
    }


    bxe_fill_report_data(sc, &cur_data);


    if (!memcmp(&cur_data, &sc->last_reported_link, sizeof(cur_data)) ||
        (bxe_test_bit(BXE_LINK_REPORT_LINK_DOWN,
                      &sc->last_reported_link.link_report_flags) &&
         bxe_test_bit(BXE_LINK_REPORT_LINK_DOWN,
                      &cur_data.link_report_flags))) {
        return;
    }

 ELINK_DEBUG_P2(sc, "Change in link status : cur_data = %x, last_reported_link = %x\n",
     cur_data.link_report_flags, sc->last_reported_link.link_report_flags);
    sc->link_cnt++;

 ELINK_DEBUG_P1(sc, "link status change count = %x\n", sc->link_cnt);

    memcpy(&sc->last_reported_link, &cur_data, sizeof(cur_data));

    if (bxe_test_bit(BXE_LINK_REPORT_LINK_DOWN,
                     &cur_data.link_report_flags)) {
        if_link_state_change(sc->ifp, LINK_STATE_DOWN);
    } else {
        const char *duplex;
        const char *flow;

        if (bxe_test_and_clear_bit(BXE_LINK_REPORT_FULL_DUPLEX,
                                   &cur_data.link_report_flags)) {
            duplex = "full";
   ELINK_DEBUG_P0(sc, "link set to full duplex\n");
        } else {
            duplex = "half";
   ELINK_DEBUG_P0(sc, "link set to half duplex\n");
        }






        if (cur_data.link_report_flags) {
            if (bxe_test_bit(BXE_LINK_REPORT_RX_FC_ON,
                             &cur_data.link_report_flags) &&
                bxe_test_bit(BXE_LINK_REPORT_TX_FC_ON,
                             &cur_data.link_report_flags)) {
                flow = "ON - receive & transmit";
            } else if (bxe_test_bit(BXE_LINK_REPORT_RX_FC_ON,
                                    &cur_data.link_report_flags) &&
                       !bxe_test_bit(BXE_LINK_REPORT_TX_FC_ON,
                                     &cur_data.link_report_flags)) {
                flow = "ON - receive";
            } else if (!bxe_test_bit(BXE_LINK_REPORT_RX_FC_ON,
                                     &cur_data.link_report_flags) &&
                       bxe_test_bit(BXE_LINK_REPORT_TX_FC_ON,
                                    &cur_data.link_report_flags)) {
                flow = "ON - transmit";
            } else {
                flow = "none";
            }
        } else {
            flow = "none";
        }

        if_link_state_change(sc->ifp, LINK_STATE_UP);
        BLOGI(sc, "NIC Link is Up, %d Mbps %s duplex, Flow control: %s\n",
              cur_data.line_speed, duplex, flow);
    }
}
