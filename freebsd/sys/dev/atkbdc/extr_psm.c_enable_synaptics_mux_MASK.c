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
struct psm_softc {int muxport; int /*<<< orphan*/  kbdc; } ;
typedef  enum probearg { ____Placeholder_probearg } probearg ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int KBDC_AUX_MUX_NUM_PORTS ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int PROBE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct psm_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int verbose ; 

__attribute__((used)) static int
FUNC8(struct psm_softc *sc, enum probearg arg)
{
	KBDC kbdc = sc->kbdc;
	int port, version;
	int probe = FALSE;
	int active_ports_count = 0;
	int active_ports_mask = 0;

	version = FUNC4(kbdc);
	if (version == -1)
		return (FALSE);

	for (port = 0; port < KBDC_AUX_MUX_NUM_PORTS; port++) {
		FUNC0(3, (LOG_DEBUG, "aux_mux: ping port %d\n", port));
		FUNC7(kbdc, port);
		if (FUNC3(kbdc) && FUNC1(kbdc)) {
			active_ports_count++;
			active_ports_mask |= 1 << port;
		}
	}

	if (verbose >= 2)
		FUNC6("Active Multiplexing PS/2 controller v%d.%d with %d "
		    "active port(s)\n", version >> 4 & 0x0f, version & 0x0f,
		    active_ports_count);

	/* psm has a special support for GenMouse + SynTouchpad combination */
	if (active_ports_count >= 2) {
		for (port = 0; port < KBDC_AUX_MUX_NUM_PORTS; port++) {
			if ((active_ports_mask & 1 << port) == 0)
				continue;
			FUNC0(3, (LOG_DEBUG, "aux_mux: probe port %d\n", port));
			FUNC7(kbdc, port);
			probe = FUNC5(sc, arg);
			if (probe) {
				if (arg == PROBE)
					sc->muxport = port;
				break;
			}
		}
	}

	/* IRQ handler does not support active multiplexing mode */
	FUNC2(kbdc);

	return (probe);
}