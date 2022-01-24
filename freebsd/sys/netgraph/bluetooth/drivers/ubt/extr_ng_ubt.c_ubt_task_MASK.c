#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ubt_softc_p ;
struct TYPE_5__ {int sc_task_flags; int /*<<< orphan*/  sc_if_mtx; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int UBT_FLAG_T_START_ALL ; 
 int UBT_FLAG_T_START_BULK ; 
 int UBT_FLAG_T_START_CTRL ; 
 int UBT_FLAG_T_STOP_ALL ; 
 int /*<<< orphan*/  UBT_IF_0_BULK_DT_RD ; 
 int /*<<< orphan*/  UBT_IF_0_BULK_DT_WR ; 
 int /*<<< orphan*/  UBT_IF_0_CTRL_DT_WR ; 
 int /*<<< orphan*/  UBT_IF_0_INTR_DT_RD ; 
 int /*<<< orphan*/  UBT_IF_1_ISOC_DT_RD1 ; 
 int /*<<< orphan*/  UBT_IF_1_ISOC_DT_RD2 ; 
 int /*<<< orphan*/  UBT_IF_1_ISOC_DT_WR1 ; 
 int /*<<< orphan*/  UBT_IF_1_ISOC_DT_WR2 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int UBT_N_TRANSFER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *context, int pending)
{
	ubt_softc_p	sc = context;
	int		task_flags, i;

	FUNC0(sc);
	task_flags = sc->sc_task_flags;
	sc->sc_task_flags = 0;
	FUNC1(sc);

	/*
	 * Stop all USB transfers synchronously.
	 * Stop interface #0 and #1 transfers at the same time and in the
	 * same loop. usbd_transfer_drain() will do appropriate locking.
	 */

	if (task_flags & UBT_FLAG_T_STOP_ALL)
		for (i = 0; i < UBT_N_TRANSFER; i ++)
			FUNC5(sc->sc_xfer[i]);

	/* Start incoming interrupt and bulk, and all isoc. USB transfers */
	if (task_flags & UBT_FLAG_T_START_ALL) {
		/*
		 * Interface #0
		 */

		FUNC2(&sc->sc_if_mtx);

		FUNC4(sc, UBT_IF_0_INTR_DT_RD);
		FUNC4(sc, UBT_IF_0_BULK_DT_RD);

		/*
		 * Interface #1
		 * Start both read and write isoc. transfers by default.
		 * Get them going all the time even if we have nothing
		 * to send to avoid any delays.
		 */

		FUNC4(sc, UBT_IF_1_ISOC_DT_RD1);
		FUNC4(sc, UBT_IF_1_ISOC_DT_RD2);
		FUNC4(sc, UBT_IF_1_ISOC_DT_WR1);
		FUNC4(sc, UBT_IF_1_ISOC_DT_WR2);

		FUNC3(&sc->sc_if_mtx);
	}

 	/* Start outgoing control transfer */
	if (task_flags & UBT_FLAG_T_START_CTRL) {
		FUNC2(&sc->sc_if_mtx);
		FUNC4(sc, UBT_IF_0_CTRL_DT_WR);
		FUNC3(&sc->sc_if_mtx);
	}

	/* Start outgoing bulk transfer */
	if (task_flags & UBT_FLAG_T_START_BULK) {
		FUNC2(&sc->sc_if_mtx);
		FUNC4(sc, UBT_IF_0_BULK_DT_WR);
		FUNC3(&sc->sc_if_mtx);
	}
}