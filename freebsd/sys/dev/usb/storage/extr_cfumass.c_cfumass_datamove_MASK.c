#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* be_move_done ) (union ctl_io*) ;} ;
struct TYPE_5__ {int flags; TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_3__ scsiio; TYPE_2__ io_hdr; } ;
struct cfumass_softc {scalar_t__ sc_current_flags; union ctl_io* sc_ctl_io; } ;
struct TYPE_4__ {struct cfumass_softc* ptr; } ;

/* Variables and functions */
 scalar_t__ CBWFLAGS_IN ; 
 scalar_t__ CBWFLAGS_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct cfumass_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  CFUMASS_T_DATA_IN ; 
 int /*<<< orphan*/  CFUMASS_T_DATA_OUT ; 
 int /*<<< orphan*/  FUNC2 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfumass_softc*,char*,scalar_t__,scalar_t__) ; 
 int CTL_FLAG_DATA_IN ; 
 int CTL_FLAG_DATA_MASK ; 
 size_t CTL_PRIV_FRONTEND ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfumass_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (union ctl_io*) ; 

__attribute__((used)) static void
FUNC8(union ctl_io *io)
{
	struct cfumass_softc *sc;

	sc = io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr;

	FUNC0(sc, "go");

	FUNC1(sc);

	FUNC4(sc->sc_ctl_io == NULL,
	    ("sc_ctl_io is %p, should be NULL", sc->sc_ctl_io));
	sc->sc_ctl_io = io;

	if ((io->io_hdr.flags & CTL_FLAG_DATA_MASK) == CTL_FLAG_DATA_IN) {
		/*
		 * Verify that CTL wants us to send the data in the direction
		 * expected by the initiator.
		 */
		if (sc->sc_current_flags != CBWFLAGS_IN) {
			FUNC3(sc, "wrong bCBWFlags 0x%x, should be 0x%x",
			    sc->sc_current_flags, CBWFLAGS_IN);
			goto fail;
		}

		FUNC5(sc, CFUMASS_T_DATA_IN);
	} else {
		if (sc->sc_current_flags != CBWFLAGS_OUT) {
			FUNC3(sc, "wrong bCBWFlags 0x%x, should be 0x%x",
			    sc->sc_current_flags, CBWFLAGS_OUT);
			goto fail;
		}

		FUNC5(sc, CFUMASS_T_DATA_OUT);
	}

	FUNC2(sc);
	return;

fail:
	FUNC6(&io->scsiio);
	io->scsiio.be_move_done(io);
	sc->sc_ctl_io = NULL;
}