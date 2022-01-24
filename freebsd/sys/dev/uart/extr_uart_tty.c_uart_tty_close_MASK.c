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
struct uart_softc {scalar_t__ sc_opened; int /*<<< orphan*/ * sc_sysdev; scalar_t__ sc_hwoflow; scalar_t__ sc_hwiflow; scalar_t__ sc_leaving; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int SER_DDTR ; 
 int SER_DRTS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_IOCTL_IFLOW ; 
 int /*<<< orphan*/  UART_IOCTL_OFLOW ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*,int) ; 
 struct uart_softc* FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_softc*) ; 

__attribute__((used)) static void
FUNC4(struct tty *tp)
{
	struct uart_softc *sc;

	sc = FUNC2(tp);
	if (sc == NULL || sc->sc_leaving || !sc->sc_opened)
		return;

	if (sc->sc_hwiflow)
		FUNC0(sc, UART_IOCTL_IFLOW, 0);
	if (sc->sc_hwoflow)
		FUNC0(sc, UART_IOCTL_OFLOW, 0);
	if (sc->sc_sysdev == NULL)
		FUNC1(sc, SER_DDTR | SER_DRTS);

	FUNC3(sc);
	sc->sc_opened = 0;
}