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
typedef  size_t uint32_t ;
struct mfi_softc {size_t mfi_max_fw_cmds; TYPE_1__* mfi_comms; int /*<<< orphan*/  (* mfi_read_fw_status ) (struct mfi_softc*) ;int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_flags; struct mfi_command* mfi_commands; scalar_t__ (* mfi_check_clear_intr ) (struct mfi_softc*) ;} ;
struct mfi_command {scalar_t__ cm_error; } ;
struct TYPE_2__ {size_t hw_pi; size_t hw_ci; size_t* hw_reply_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_FLAGS_QFRZN ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_softc*,struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mfi_softc*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct mfi_softc *sc;
	struct mfi_command *cm;
	uint32_t pi, ci, context;

	sc = (struct mfi_softc *)arg;

	if (sc->mfi_check_clear_intr(sc))
		return;

restart:
	pi = sc->mfi_comms->hw_pi;
	ci = sc->mfi_comms->hw_ci;
	FUNC3(&sc->mfi_io_lock);
	while (ci != pi) {
		context = sc->mfi_comms->hw_reply_q[ci];
		if (context < sc->mfi_max_fw_cmds) {
			cm = &sc->mfi_commands[context];
			FUNC1(cm);
			cm->cm_error = 0;
			FUNC0(sc, cm);
		}
		if (++ci == (sc->mfi_max_fw_cmds + 1))
			ci = 0;
	}

	sc->mfi_comms->hw_ci = ci;

	/* Give defered I/O a chance to run */
	sc->mfi_flags &= ~MFI_FLAGS_QFRZN;
	FUNC2(sc);
	FUNC4(&sc->mfi_io_lock);

	/*
	 * Dummy read to flush the bus; this ensures that the indexes are up
	 * to date.  Restart processing if more commands have come it.
	 */
	(void)sc->mfi_read_fw_status(sc);
	if (pi != sc->mfi_comms->hw_pi)
		goto restart;

	return;
}