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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct uart_softc {int sc_hwsig; int sc_pps_mode; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/  sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTS ; 
 int /*<<< orphan*/  DCD ; 
 int /*<<< orphan*/  DSR ; 
 int /*<<< orphan*/  REG_MSR ; 
 int /*<<< orphan*/  RI ; 
 int SER_MASK_DELTA ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int UART_PPS_NARROW_PULSE ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct uart_softc *sc)
{
	uint32_t old, sig;
	uint8_t msr;

	/*
	 * The delta bits are reputed to be broken on some hardware, so use
	 * software delta detection by default.  Use the hardware delta bits
	 * when capturing PPS pulses which are too narrow for software detection
	 * to see the edges.  Hardware delta for RI doesn't work like the
	 * others, so always use software for it.  Other threads may be changing
	 * other (non-MSR) bits in sc_hwsig, so loop until it can successfully
	 * update without other changes happening.  Note that the SIGCHGxx()
	 * macros carefully preserve the delta bits when we have to loop several
	 * times and a signal transitions between iterations.
	 */
	do {
		old = sc->sc_hwsig;
		sig = old;
		FUNC4(sc->sc_hwmtx);
		msr = FUNC3(&sc->sc_bas, REG_MSR);
		FUNC5(sc->sc_hwmtx);
		if (sc->sc_pps_mode & UART_PPS_NARROW_PULSE) {
			FUNC0(sig, msr, DSR);
			FUNC0(sig, msr, CTS);
			FUNC0(sig, msr, DCD);
		} else {
			FUNC1(sig, msr, DSR);
			FUNC1(sig, msr, CTS);
			FUNC1(sig, msr, DCD);
		}
		FUNC1(sig, msr, RI);
	} while (!FUNC2(&sc->sc_hwsig, old, sig & ~SER_MASK_DELTA));
	return (sig);
}