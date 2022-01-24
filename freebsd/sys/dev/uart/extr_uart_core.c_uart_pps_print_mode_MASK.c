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
struct uart_softc {int sc_pps_mode; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
#define  UART_PPS_CTS 130 
#define  UART_PPS_DCD 129 
#define  UART_PPS_DISABLED 128 
 int UART_PPS_INVERT_PULSE ; 
 int UART_PPS_NARROW_PULSE ; 
 int UART_PPS_SIGNAL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct uart_softc *sc)
{

	FUNC0(sc->sc_dev, "PPS capture mode: ");
	switch(sc->sc_pps_mode & UART_PPS_SIGNAL_MASK) {
	case UART_PPS_DISABLED:
		FUNC1("disabled");
		break;
	case UART_PPS_CTS:
		FUNC1("CTS");
		break;
	case UART_PPS_DCD:
		FUNC1("DCD");
		break;
	default:
		FUNC1("invalid");
		break;
	}
	if (sc->sc_pps_mode & UART_PPS_INVERT_PULSE)
		FUNC1("-Inverted");
	if (sc->sc_pps_mode & UART_PPS_NARROW_PULSE)
		FUNC1("-NarrowPulse");
	FUNC1("\n");
}