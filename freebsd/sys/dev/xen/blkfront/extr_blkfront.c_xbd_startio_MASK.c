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
struct xbd_softc {scalar_t__ xbd_state; scalar_t__ xbd_qfrozen_cnt; int /*<<< orphan*/  xbd_ring; int /*<<< orphan*/  xbd_io_lock; } ;
struct xbd_command {int cm_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int XBDCF_Q_FREEZE ; 
 int /*<<< orphan*/  XBD_Q_READY ; 
 scalar_t__ XBD_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 struct xbd_command* FUNC3 (struct xbd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct xbd_softc*,struct xbd_command*,int) ; 
 struct xbd_command* FUNC5 (struct xbd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xbd_softc*) ; 
 int FUNC7 (struct xbd_softc*,struct xbd_command*) ; 

__attribute__((used)) static void
FUNC8(struct xbd_softc *sc)
{
	struct xbd_command *cm;
	int error, queued = 0;

	FUNC1(&sc->xbd_io_lock, MA_OWNED);

	if (sc->xbd_state != XBD_STATE_CONNECTED)
		return;

	while (!FUNC0(&sc->xbd_ring)) {

		if (sc->xbd_qfrozen_cnt != 0)
			break;

		cm = FUNC5(sc, XBD_Q_READY);

		if (cm == NULL)
		    cm = FUNC3(sc);

		if (cm == NULL)
			break;

		if ((cm->cm_flags & XBDCF_Q_FREEZE) != 0) {
			/*
			 * Single step command.  Future work is
			 * held off until this command completes.
			 */
			FUNC4(sc, cm, XBDCF_Q_FREEZE);
		}

		if ((error = FUNC7(sc, cm)) != 0) {
			FUNC2("xbd_queue_request returned %d\n", error);
			break;
		}
		queued++;
	}

	if (queued != 0) 
		FUNC6(sc);
}