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
struct uart_bas {int chan; } ;
struct uart_softc {int sc_hwsig; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAB_MODE ; 
 int /*<<< orphan*/  SAB_MODE_FRTS ; 
 int /*<<< orphan*/  SAB_PVR ; 
 int /*<<< orphan*/  SAB_PVR_DTR_A ; 
 int /*<<< orphan*/  SAB_PVR_DTR_B ; 
 int SER_DDTR ; 
 int SER_DRTS ; 
 int SER_DTR ; 
 int SER_RTS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct uart_softc *sc, int sig)
{
	struct uart_bas *bas;
	uint32_t new, old;
	uint8_t mode, pvr;

	bas = &sc->sc_bas;
	do {
		old = sc->sc_hwsig;
		new = old;
		if (sig & SER_DDTR) {
			FUNC0(sig & SER_DTR, new, SER_DTR,
			    SER_DDTR);
		}
		if (sig & SER_DRTS) {
			FUNC0(sig & SER_RTS, new, SER_RTS,
			    SER_DRTS);
		}
	} while (!FUNC1(&sc->sc_hwsig, old, new));

	FUNC4(sc->sc_hwmtx);
	/* Set DTR pin. */
	pvr = FUNC3(bas, SAB_PVR);
	switch (bas->chan) {
	case 1:
		if (new & SER_DTR)
			pvr &= ~SAB_PVR_DTR_A;
		else
			pvr |= SAB_PVR_DTR_A;
		break;
	case 2:
		if (new & SER_DTR)
			pvr &= ~SAB_PVR_DTR_B;
		else
			pvr |= SAB_PVR_DTR_B;
		break;
	}
	FUNC5(bas, SAB_PVR, pvr);

	/* Set RTS pin. */
	mode = FUNC3(bas, SAB_MODE);
	if (new & SER_RTS)
		mode &= ~SAB_MODE_FRTS;
	else
		mode |= SAB_MODE_FRTS;
	FUNC5(bas, SAB_MODE, mode);
	FUNC2(bas);
	FUNC6(sc->sc_hwmtx);
	return (0);
}