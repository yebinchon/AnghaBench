#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct stats_counter {int /*<<< orphan*/  tstats_counter; int /*<<< orphan*/  cstats_counter; int /*<<< orphan*/  ustats_counter; int /*<<< orphan*/  xstats_counter; } ;
struct bxe_softc {scalar_t__ stats_counter; TYPE_1__* fw_stats_data; } ;
struct TYPE_2__ {struct stats_counter storm_counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_STATS ; 
 int EAGAIN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bxe_softc *sc)
{
    struct stats_counter *counters = &sc->fw_stats_data->storm_counters;
    uint16_t cur_stats_counter;

    /*
     * Make sure we use the value of the counter
     * used for sending the last stats ramrod.
     */
    FUNC1(sc);
    cur_stats_counter = (sc->stats_counter - 1);
    FUNC2(sc);

    /* are storm stats valid? */
    if (FUNC3(counters->xstats_counter) != cur_stats_counter) {
        FUNC0(sc, DBG_STATS,
              "stats not updated by xstorm, "
              "counter 0x%x != stats_counter 0x%x\n",
              FUNC3(counters->xstats_counter), sc->stats_counter);
        return (-EAGAIN);
    }

    if (FUNC3(counters->ustats_counter) != cur_stats_counter) {
        FUNC0(sc, DBG_STATS,
              "stats not updated by ustorm, "
              "counter 0x%x != stats_counter 0x%x\n",
              FUNC3(counters->ustats_counter), sc->stats_counter);
        return (-EAGAIN);
    }

    if (FUNC3(counters->cstats_counter) != cur_stats_counter) {
        FUNC0(sc, DBG_STATS,
              "stats not updated by cstorm, "
              "counter 0x%x != stats_counter 0x%x\n",
              FUNC3(counters->cstats_counter), sc->stats_counter);
        return (-EAGAIN);
    }

    if (FUNC3(counters->tstats_counter) != cur_stats_counter) {
        FUNC0(sc, DBG_STATS,
              "stats not updated by tstorm, "
              "counter 0x%x != stats_counter 0x%x\n",
              FUNC3(counters->tstats_counter), sc->stats_counter);
        return (-EAGAIN);
    }

    return (0);
}