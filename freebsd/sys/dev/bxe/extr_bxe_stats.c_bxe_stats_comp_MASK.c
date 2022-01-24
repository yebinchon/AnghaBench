#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct bxe_softc {int /*<<< orphan*/  sp_err_timeout_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  BXE_ERR_STATS_TO ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ DMAE_COMP_VAL ; 
 int hz ; 
 scalar_t__* stats_comp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static int
FUNC5(struct bxe_softc *sc)
{
    uint32_t *stats_comp = FUNC2(sc, stats_comp);
    int cnt = 10;

    while (*stats_comp != DMAE_COMP_VAL) {
        if (!cnt) {
            FUNC0(sc, "Timeout waiting for stats finished\n");
	    FUNC1(sc, BXE_ERR_STATS_TO);
            FUNC4(taskqueue_thread,
                &sc->sp_err_timeout_task, hz/10);
            break;

        }

        cnt--;
        FUNC3(1000);
    }

    return (1);
}