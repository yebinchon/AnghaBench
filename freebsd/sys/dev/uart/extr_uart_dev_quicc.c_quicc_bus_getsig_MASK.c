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
typedef  int uint32_t ;
struct uart_softc {int sc_hwsig; int /*<<< orphan*/  sc_hwmtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  SER_CTS ; 
 int /*<<< orphan*/  SER_DCD ; 
 int /*<<< orphan*/  SER_DCTS ; 
 int /*<<< orphan*/  SER_DDCD ; 
 int /*<<< orphan*/  SER_DDSR ; 
 int /*<<< orphan*/  SER_DSR ; 
 int SER_MASK_DELTA ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	uint32_t new, old, sig;
	uint32_t dummy;

	do {
		old = sc->sc_hwsig;
		sig = old;
		FUNC2(sc->sc_hwmtx);
		/* XXX SIGNALS */
		dummy = 0;
		FUNC3(sc->sc_hwmtx);
		FUNC0(dummy, sig, SER_CTS, SER_DCTS);
		FUNC0(dummy, sig, SER_DCD, SER_DDCD);
		FUNC0(dummy, sig, SER_DSR, SER_DDSR);
		new = sig & ~SER_MASK_DELTA;
	} while (!FUNC1(&sc->sc_hwsig, old, new));
	return (sig);
}