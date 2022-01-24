#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ capPassthrough; } ;
struct TYPE_3__ {int hwid; int buttons; } ;
struct psm_softc {int tphw; TYPE_2__ synhw; TYPE_1__ hw; int /*<<< orphan*/  kbdc; } ;
typedef  enum probearg { ____Placeholder_probearg } probearg ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int PROBE ; 
 scalar_t__ PSM_ACK ; 
 int TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct psm_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct psm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct psm_softc*) ; 
 int /*<<< orphan*/  trackpoint_support ; 
 int /*<<< orphan*/  FUNC5 (struct psm_softc*) ; 

__attribute__((used)) static int
FUNC6(struct psm_softc *sc, enum probearg arg)
{
	KBDC kbdc = sc->kbdc;
	int id;

	/*
	 * If called from enable_synaptics(), make sure that passthrough
	 * mode is enabled so we can reach the trackpoint.
	 * However, passthrough mode must be disabled before setting the
	 * trackpoint parameters, as rackpoint_command() enables and disables
	 * passthrough mode on its own.
	 */
	if (sc->synhw.capPassthrough)
		FUNC4(sc);

	if (FUNC1(kbdc, 0xe1) != PSM_ACK ||
	    FUNC0(kbdc) != 0x01)
		goto no_trackpoint;
	id = FUNC0(kbdc);
	if (id < 0x01)
		goto no_trackpoint;
	if (arg == PROBE)
		sc->tphw = id;
	if (!trackpoint_support)
		goto no_trackpoint;

	if (sc->synhw.capPassthrough)
		FUNC3(sc);

	if (arg == PROBE) {
		FUNC5(sc);
		/*
		 * Don't overwrite hwid and buttons when we are
		 * a guest device.
		 */
		if (!sc->synhw.capPassthrough) {
			sc->hw.hwid = id;
			sc->hw.buttons = 3;
		}
	}

	FUNC2(sc);

	return (TRUE);

no_trackpoint:
	if (sc->synhw.capPassthrough)
		FUNC3(sc);

	return (FALSE);
}