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
struct bxe_softc {int /*<<< orphan*/  sp_tq_task; int /*<<< orphan*/  sp_tq; int /*<<< orphan*/  igu_dsb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int,char*) ; 
 int DBG_INTR ; 
 int DBG_SP ; 
 int /*<<< orphan*/  IGU_INT_DISABLE ; 
 int /*<<< orphan*/  USTORM_ID ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void *xsc)
{
    struct bxe_softc *sc = (struct bxe_softc *)xsc;

    FUNC0(sc, (DBG_INTR | DBG_SP), "---> SP INTR <---\n");

    /* acknowledge and disable further slowpath interrupts */
    FUNC1(sc, sc->igu_dsb_id, USTORM_ID, 0, IGU_INT_DISABLE, 0);

    /* schedule slowpath handler */
    FUNC2(sc->sp_tq, &sc->sp_tq_task);
}