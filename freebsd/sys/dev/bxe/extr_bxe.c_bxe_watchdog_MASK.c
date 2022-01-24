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
struct bxe_softc {int /*<<< orphan*/  sp_err_timeout_task; } ;
struct bxe_fastpath {scalar_t__ watchdog_timer; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BXE_ERR_TXQ_STUCK ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static int
FUNC5(struct bxe_softc    *sc,
             struct bxe_fastpath *fp)
{
    FUNC1(fp);

    if ((fp->watchdog_timer == 0) || (--fp->watchdog_timer)) {
        FUNC2(fp);
        return (0);
    }

    FUNC0(sc, "TX watchdog timeout on fp[%02d], resetting!\n", fp->index);

    FUNC2(fp);
    FUNC3(sc, BXE_ERR_TXQ_STUCK);
    FUNC4(taskqueue_thread,
        &sc->sp_err_timeout_task, hz/10);

    return (-1);
}