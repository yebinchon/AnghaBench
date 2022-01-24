#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct uart_softc {int sc_hwsig; scalar_t__ sc_txdatasz; int /*<<< orphan*/  sc_txfifosz; int /*<<< orphan*/  sc_txbuf; int /*<<< orphan*/  sc_hwoflow; scalar_t__ sc_txbusy; scalar_t__ sc_leaving; } ;
struct TYPE_2__ {int c_cflag; } ;
struct tty {TYPE_1__ t_termios; } ;

/* Variables and functions */
 int CCTS_OFLOW ; 
 int SER_CTS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*) ; 
 struct uart_softc* FUNC1 (struct tty*) ; 
 scalar_t__ FUNC2 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct tty *tp)
{
	struct uart_softc *sc;

	sc = FUNC1(tp);
	if (sc == NULL || sc->sc_leaving)
		return;

	if (sc->sc_txbusy)
		return;

	/*
	 * Respect RTS/CTS (output) flow control if enabled and not already
	 * handled by hardware.
	 */
	if ((tp->t_termios.c_cflag & CCTS_OFLOW) && !sc->sc_hwoflow &&
	    !(sc->sc_hwsig & SER_CTS))
		return;

	sc->sc_txdatasz = FUNC2(tp, sc->sc_txbuf, sc->sc_txfifosz);
	if (sc->sc_txdatasz != 0)
		FUNC0(sc);
}