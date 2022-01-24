#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ scsi_status; } ;
struct TYPE_7__ {int status; scalar_t__ io_type; int flags; TYPE_1__* ctl_private; } ;
struct TYPE_6__ {scalar_t__ task_action; } ;
union ctl_io {TYPE_4__ scsiio; TYPE_3__ io_hdr; TYPE_2__ taskio; } ;
struct cfumass_softc {int sc_current_status; int /*<<< orphan*/  sc_queued; int /*<<< orphan*/ * sc_ctl_io; } ;
struct TYPE_5__ {struct cfumass_softc* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfumass_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  CFUMASS_T_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct cfumass_softc*) ; 
 int CTL_FLAG_ABORT ; 
 int CTL_FLAG_ABORT_STATUS ; 
 int CTL_FLAG_STATUS_SENT ; 
 scalar_t__ CTL_IO_TASK ; 
 size_t CTL_PRIV_FRONTEND ; 
 int CTL_SCSI_ERROR ; 
 int CTL_STATUS_MASK ; 
 int CTL_STATUS_NONE ; 
 int CTL_SUCCESS ; 
 scalar_t__ CTL_TASK_I_T_NEXUS_RESET ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ SCSI_STATUS_CHECK_COND ; 
 int /*<<< orphan*/  FUNC4 (struct cfumass_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC6 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(union ctl_io *io)
{
	struct cfumass_softc *sc;

	sc = io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr;

	FUNC0(sc, "go");

	FUNC3(((io->io_hdr.status & CTL_STATUS_MASK) != CTL_STATUS_NONE),
	    ("invalid CTL status %#x", io->io_hdr.status));
	FUNC3(sc->sc_ctl_io == NULL,
	    ("sc_ctl_io is %p, should be NULL", sc->sc_ctl_io));

	if (io->io_hdr.io_type == CTL_IO_TASK &&
	    io->taskio.task_action == CTL_TASK_I_T_NEXUS_RESET) {
		/*
		 * Implicit task termination has just completed; nothing to do.
		 */
		FUNC5(io);
		return;
	}

	/*
	 * Do not return status for aborted commands.
	 * There are exceptions, but none supported by CTL yet.
	 */
	if (((io->io_hdr.flags & CTL_FLAG_ABORT) &&
	     (io->io_hdr.flags & CTL_FLAG_ABORT_STATUS) == 0) ||
	    (io->io_hdr.flags & CTL_FLAG_STATUS_SENT)) {
		FUNC5(io);
		return;
	}

	if ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_SUCCESS)
		sc->sc_current_status = 0;
	else
		sc->sc_current_status = 1;

	/* XXX: How should we report BUSY, RESERVATION CONFLICT, etc? */
	if ((io->io_hdr.status & CTL_STATUS_MASK) == CTL_SCSI_ERROR &&
	    io->scsiio.scsi_status == SCSI_STATUS_CHECK_COND)
		FUNC6(io);
	else
		FUNC5(io);

	FUNC1(sc);
	FUNC4(sc, CFUMASS_T_STATUS);
	FUNC2(sc);

	FUNC7(&sc->sc_queued);
}