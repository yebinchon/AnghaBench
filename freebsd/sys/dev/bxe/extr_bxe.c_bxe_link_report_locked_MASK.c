#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ link_report_flags; } ;
struct bxe_softc {int /*<<< orphan*/  ifp; TYPE_1__ last_reported_link; int /*<<< orphan*/  link_cnt; } ;
struct bxe_link_report_data {int /*<<< orphan*/  line_speed; scalar_t__ link_report_flags; } ;
typedef  int /*<<< orphan*/  cur_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  BXE_LINK_REPORT_FULL_DUPLEX ; 
 int /*<<< orphan*/  BXE_LINK_REPORT_LINK_DOWN ; 
 int /*<<< orphan*/  BXE_LINK_REPORT_RX_FC_ON ; 
 int /*<<< orphan*/  BXE_LINK_REPORT_TX_FC_ON ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,struct bxe_link_report_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_link_report_data*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct bxe_link_report_data*,int) ; 

__attribute__((used)) static void
FUNC13(struct bxe_softc *sc)
{
    struct bxe_link_report_data cur_data;

    /* reread mf_cfg */
    if (FUNC5(sc) && !FUNC1(sc)) {
        FUNC7(sc);
    }

    /* Read the current link report info */
    FUNC6(sc, &cur_data);

    /* Don't report link down or exactly the same link status twice */
    if (!FUNC11(&cur_data, &sc->last_reported_link, sizeof(cur_data)) ||
        (FUNC9(BXE_LINK_REPORT_LINK_DOWN,
                      &sc->last_reported_link.link_report_flags) &&
         FUNC9(BXE_LINK_REPORT_LINK_DOWN,
                      &cur_data.link_report_flags))) {
        return;
    }

	FUNC4(sc, "Change in link status : cur_data = %x, last_reported_link = %x\n",
					cur_data.link_report_flags, sc->last_reported_link.link_report_flags);
    sc->link_cnt++;

	FUNC3(sc, "link status change count = %x\n", sc->link_cnt);
    /* report new link params and remember the state for the next time */
    FUNC12(&sc->last_reported_link, &cur_data, sizeof(cur_data));

    if (FUNC9(BXE_LINK_REPORT_LINK_DOWN,
                     &cur_data.link_report_flags)) {
        FUNC10(sc->ifp, LINK_STATE_DOWN);
    } else {
        const char *duplex;
        const char *flow;

        if (FUNC8(BXE_LINK_REPORT_FULL_DUPLEX,
                                   &cur_data.link_report_flags)) {
            duplex = "full";
			FUNC2(sc, "link set to full duplex\n");
        } else {
            duplex = "half";
			FUNC2(sc, "link set to half duplex\n");
        }

        /*
         * Handle the FC at the end so that only these flags would be
         * possibly set. This way we may easily check if there is no FC
         * enabled.
         */
        if (cur_data.link_report_flags) {
            if (FUNC9(BXE_LINK_REPORT_RX_FC_ON,
                             &cur_data.link_report_flags) &&
                FUNC9(BXE_LINK_REPORT_TX_FC_ON,
                             &cur_data.link_report_flags)) {
                flow = "ON - receive & transmit";
            } else if (FUNC9(BXE_LINK_REPORT_RX_FC_ON,
                                    &cur_data.link_report_flags) &&
                       !FUNC9(BXE_LINK_REPORT_TX_FC_ON,
                                     &cur_data.link_report_flags)) {
                flow = "ON - receive";
            } else if (!FUNC9(BXE_LINK_REPORT_RX_FC_ON,
                                     &cur_data.link_report_flags) &&
                       FUNC9(BXE_LINK_REPORT_TX_FC_ON,
                                    &cur_data.link_report_flags)) {
                flow = "ON - transmit";
            } else {
                flow = "none"; /* possible? */
            }
        } else {
            flow = "none";
        }

        FUNC10(sc->ifp, LINK_STATE_UP);
        FUNC0(sc, "NIC Link is Up, %d Mbps %s duplex, Flow control: %s\n",
              cur_data.line_speed, duplex, flow);
    }
}