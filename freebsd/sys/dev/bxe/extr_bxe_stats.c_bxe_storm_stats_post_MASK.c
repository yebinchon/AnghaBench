#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bxe_softc {int stats_pending; int /*<<< orphan*/  fw_stats_req_mapping; TYPE_1__* fw_stats_req; int /*<<< orphan*/  stats_counter; } ;
struct TYPE_4__ {int /*<<< orphan*/  drv_stats_counter; } ;
struct TYPE_3__ {TYPE_2__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_STATS ; 
 int /*<<< orphan*/  NONE_CONNECTION_TYPE ; 
 int /*<<< orphan*/  RAMROD_CMD_ID_COMMON_STAT_QUERY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct bxe_softc *sc)
{
    int rc;

    if (!sc->stats_pending) {
        FUNC1(sc);

        if (sc->stats_pending) {
            FUNC2(sc);
            return;
        }

        sc->fw_stats_req->hdr.drv_stats_counter =
            FUNC7(sc->stats_counter++);

        FUNC0(sc, DBG_STATS,
              "sending statistics ramrod %d\n",
              FUNC8(sc->fw_stats_req->hdr.drv_stats_counter));

        /* adjust the ramrod to include VF queues statistics */
        // XXX bxe_iov_adjust_stats_req(sc);

        FUNC5(sc);

        /* send FW stats ramrod */
        rc = FUNC6(sc, RAMROD_CMD_ID_COMMON_STAT_QUERY, 0,
                         FUNC3(sc->fw_stats_req_mapping),
                         FUNC4(sc->fw_stats_req_mapping),
                         NONE_CONNECTION_TYPE);
        if (rc == 0) {
            sc->stats_pending = 1;
        }

        FUNC2(sc);
    }
}