#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nig_stats {int dummy; } ;
struct host_func_stats {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  egress_mac_pkt1_lo; int /*<<< orphan*/  egress_mac_pkt0_lo; void* brb_truncate; void* brb_discard; } ;
struct TYPE_8__ {void* port_stx; scalar_t__ pmf; TYPE_4__ old_nig_stats; } ;
struct bxe_softc {int num_queues; scalar_t__ stats_init; TYPE_2__ port; int /*<<< orphan*/  stats_state; void* func_stx; TYPE_4__ func_stats; TYPE_4__ eth_stats; TYPE_4__ eth_stats_old; TYPE_4__ fw_stats_old; TYPE_4__ net_stats_old; TYPE_1__* fp; scalar_t__ stats_counter; scalar_t__ executer_idx; scalar_t__ stats_pending; } ;
struct TYPE_11__ {int /*<<< orphan*/  fw_mb_param; } ;
struct TYPE_9__ {int /*<<< orphan*/  port_stx; } ;
struct TYPE_7__ {TYPE_4__ eth_q_stats_old; TYPE_4__ eth_q_stats; TYPE_4__ old_xclient; TYPE_4__ old_uclient; TYPE_4__ old_tclient; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 TYPE_4__* FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_STATS ; 
 scalar_t__ FALSE ; 
 scalar_t__ NIG_REG_STAT0_BRB_DISCARD ; 
 scalar_t__ NIG_REG_STAT0_BRB_TRUNCATE ; 
 scalar_t__ NIG_REG_STAT0_EGRESS_MAC_PKT0 ; 
 scalar_t__ NIG_REG_STAT0_EGRESS_MAC_PKT1 ; 
 void* FUNC4 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct bxe_softc*) ; 
 int FUNC7 (struct bxe_softc*) ; 
 void* FUNC8 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATS_EVENT_PMF ; 
 int /*<<< orphan*/  STATS_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 TYPE_5__* func_mb ; 
 int /*<<< orphan*/  func_stats ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* port_mb ; 

void
FUNC16(struct bxe_softc *sc)
{
    int /*abs*/port = FUNC7(sc);
    int mb_idx = FUNC6(sc);
    int i;

    sc->stats_pending = 0;
    sc->executer_idx = 0;
    sc->stats_counter = 0;

    /* port and func stats for management */
    if (!FUNC1(sc)) {
        sc->port.port_stx = FUNC8(sc, port_mb[port].port_stx);
        sc->func_stx = FUNC8(sc, func_mb[mb_idx].fw_mb_param);
    } else {
        sc->port.port_stx = 0;
        sc->func_stx = 0;
    }

    FUNC0(sc, DBG_STATS, "port_stx 0x%x func_stx 0x%x\n",
          sc->port.port_stx, sc->func_stx);

    /* pmf should retrieve port statistics from SP on a non-init*/
    if (!sc->stats_init && sc->port.pmf && sc->port.port_stx) {
        FUNC14(sc, STATS_EVENT_PMF);
    }

    port = FUNC7(sc);
    /* port stats */
    FUNC15(&(sc->port.old_nig_stats), 0, sizeof(struct nig_stats));
    sc->port.old_nig_stats.brb_discard =
        FUNC4(sc, NIG_REG_STAT0_BRB_DISCARD + port*0x38);
    sc->port.old_nig_stats.brb_truncate =
        FUNC4(sc, NIG_REG_STAT0_BRB_TRUNCATE + port*0x38);
    if (!FUNC3(sc)) {
        FUNC5(sc, NIG_REG_STAT0_EGRESS_MAC_PKT0 + port*0x50,
                    &(sc->port.old_nig_stats.egress_mac_pkt0_lo), 2);
        FUNC5(sc, NIG_REG_STAT0_EGRESS_MAC_PKT1 + port*0x50,
                    &(sc->port.old_nig_stats.egress_mac_pkt1_lo), 2);
    }

    /* function stats */
    for (i = 0; i < sc->num_queues; i++) {
        FUNC15(&sc->fp[i].old_tclient, 0, sizeof(sc->fp[i].old_tclient));
        FUNC15(&sc->fp[i].old_uclient, 0, sizeof(sc->fp[i].old_uclient));
        FUNC15(&sc->fp[i].old_xclient, 0, sizeof(sc->fp[i].old_xclient));
        if (sc->stats_init) {
            FUNC15(&sc->fp[i].eth_q_stats, 0,
                   sizeof(sc->fp[i].eth_q_stats));
            FUNC15(&sc->fp[i].eth_q_stats_old, 0,
                   sizeof(sc->fp[i].eth_q_stats_old));
        }
    }

    /* prepare statistics ramrod data */
    FUNC12(sc);

    if (sc->stats_init) {
        FUNC15(&sc->net_stats_old, 0, sizeof(sc->net_stats_old));
        FUNC15(&sc->fw_stats_old, 0, sizeof(sc->fw_stats_old));
        FUNC15(&sc->eth_stats_old, 0, sizeof(sc->eth_stats_old));
        FUNC15(&sc->eth_stats, 0, sizeof(sc->eth_stats));
        FUNC15(&sc->func_stats, 0, sizeof(sc->func_stats));

        /* Clean SP from previous statistics */
        if (sc->func_stx) {
            FUNC15(FUNC2(sc, func_stats), 0, sizeof(struct host_func_stats));
            FUNC9(sc);
            FUNC10(sc);
            FUNC13(sc);
        }
    }

    sc->stats_state = STATS_STATE_DISABLED;

    if (sc->port.pmf && sc->port.port_stx) {
        FUNC11(sc);
    }

    /* mark the end of statistics initialization */
    sc->stats_init = FALSE;
}