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
struct uart_softc {scalar_t__ sc_hwoflow; scalar_t__ sc_isquelch; int /*<<< orphan*/  sc_hwiflow; scalar_t__ sc_leaving; } ;
struct tty {int dummy; } ;
struct termios {int c_cflag; int /*<<< orphan*/  c_ospeed; int /*<<< orphan*/  c_ispeed; } ;

/* Variables and functions */
 int CCTS_OFLOW ; 
 int CNO_RTSDTR ; 
 int CRTS_IFLOW ; 
#define  CS5 130 
#define  CS6 129 
#define  CS7 128 
 int CSIZE ; 
 int CSTOPB ; 
 int EINVAL ; 
 int ENODEV ; 
 int PARENB ; 
 int PARODD ; 
 int SER_DDTR ; 
 int SER_DRTS ; 
 int SER_DTR ; 
 int SER_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UART_IOCTL_IFLOW ; 
 int /*<<< orphan*/  UART_IOCTL_OFLOW ; 
 scalar_t__ FUNC1 (struct uart_softc*,int /*<<< orphan*/ ,int,int,int) ; 
 int UART_PARITY_EVEN ; 
 int UART_PARITY_NONE ; 
 int UART_PARITY_ODD ; 
 int /*<<< orphan*/  FUNC2 (struct uart_softc*,int) ; 
 struct uart_softc* FUNC3 (struct tty*) ; 

__attribute__((used)) static int
FUNC4(struct tty *tp, struct termios *t)
{
	struct uart_softc *sc;
	int databits, parity, stopbits;

	sc = FUNC3(tp);
	if (sc == NULL || sc->sc_leaving)
		return (ENODEV);
	if (t->c_ispeed != t->c_ospeed && t->c_ospeed != 0)
		return (EINVAL);
	if (t->c_ospeed == 0) {
		FUNC2(sc, SER_DDTR | SER_DRTS);
		return (0);
	}
	switch (t->c_cflag & CSIZE) {
	case CS5:	databits = 5; break;
	case CS6:	databits = 6; break;
	case CS7:	databits = 7; break;
	default:	databits = 8; break;
	}
	stopbits = (t->c_cflag & CSTOPB) ? 2 : 1;
	if (t->c_cflag & PARENB)
		parity = (t->c_cflag & PARODD) ? UART_PARITY_ODD :
		    UART_PARITY_EVEN;
	else
		parity = UART_PARITY_NONE;
	if (FUNC1(sc, t->c_ospeed, databits, stopbits, parity) != 0)
		return (EINVAL);
	if ((t->c_cflag & CNO_RTSDTR) == 0)
		FUNC2(sc, SER_DDTR | SER_DTR);
	/* Set input flow control state. */
	if (!sc->sc_hwiflow) {
		if ((t->c_cflag & CRTS_IFLOW) && sc->sc_isquelch)
			FUNC2(sc, SER_DRTS);
		else {
			if ((t->c_cflag & CNO_RTSDTR) == 0)
				FUNC2(sc, SER_DRTS | SER_RTS);
		}
	} else
		FUNC0(sc, UART_IOCTL_IFLOW, (t->c_cflag & CRTS_IFLOW));
	/* Set output flow control state. */
	if (sc->sc_hwoflow)
		FUNC0(sc, UART_IOCTL_OFLOW, (t->c_cflag & CCTS_OFLOW));

	return (0);
}