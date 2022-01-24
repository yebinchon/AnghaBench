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
struct hn_softc {int hn_flags; scalar_t__ hn_rxbuf_gpadl; scalar_t__ hn_chim_gpadl; int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_prichan; } ;

/* Variables and functions */
 int HN_FLAG_CHIM_REF ; 
 int HN_FLAG_RXBUF_REF ; 
 int HN_FLAG_SYNTH_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ VMBUS_VERSION_WIN10 ; 
 int /*<<< orphan*/  FUNC1 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ vmbus_current_version ; 

__attribute__((used)) static void
FUNC6(struct hn_softc *sc)
{

	FUNC0(sc->hn_flags & HN_FLAG_SYNTH_ATTACHED,
	    ("synthetic parts were not attached"));

	/* Detach the RNDIS first. */
	FUNC3(sc);

	/* Detach NVS. */
	FUNC2(sc);

	/* Detach all of the channels. */
	FUNC1(sc);

	if (vmbus_current_version >= VMBUS_VERSION_WIN10 && sc->hn_rxbuf_gpadl != 0) {
		/*
		 * Host is post-Win2016, disconnect RXBUF from primary channel here.
		 */
		int error;

		error = FUNC5(sc->hn_prichan,
		    sc->hn_rxbuf_gpadl);
		if (error) {
			FUNC4(sc->hn_ifp,
			    "rxbuf gpadl disconn failed: %d\n", error);
			sc->hn_flags |= HN_FLAG_RXBUF_REF;
		}
		sc->hn_rxbuf_gpadl = 0;
	}

	if (vmbus_current_version >= VMBUS_VERSION_WIN10 && sc->hn_chim_gpadl != 0) {
		/*
		 * Host is post-Win2016, disconnect chimney sending buffer from
		 * primary channel here.
		 */
		int error;

		error = FUNC5(sc->hn_prichan,
		    sc->hn_chim_gpadl);
		if (error) {
			FUNC4(sc->hn_ifp,
			    "chim gpadl disconn failed: %d\n", error);
			sc->hn_flags |= HN_FLAG_CHIM_REF;
		}
		sc->hn_chim_gpadl = 0;
	}
	sc->hn_flags &= ~HN_FLAG_SYNTH_ATTACHED;
}