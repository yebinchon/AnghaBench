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
struct TYPE_2__ {int opened; int /*<<< orphan*/  rfd; int /*<<< orphan*/  wfd; } ;
struct uart_softc {TYPE_1__ tty; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  cap_ioctl_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_EVENT ; 
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TIOCGETA ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  TIOCSETA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int uart_stdio ; 

__attribute__((used)) static int
FUNC6(struct uart_softc *sc)
{
#ifndef WITHOUT_CAPSICUM
	cap_rights_t rights;
	cap_ioctl_t cmds[] = { TIOCGETA, TIOCSETA, TIOCGWINSZ };
#endif

	if (uart_stdio)
		return (-1);

	sc->tty.rfd = STDIN_FILENO;
	sc->tty.wfd = STDOUT_FILENO;
	sc->tty.opened = true;

	if (FUNC4(sc->tty.rfd, F_SETFL, O_NONBLOCK) != 0)
		return (-1);
	if (FUNC4(sc->tty.wfd, F_SETFL, O_NONBLOCK) != 0)
		return (-1);

#ifndef WITHOUT_CAPSICUM
	FUNC0(&rights, CAP_EVENT, CAP_IOCTL, CAP_READ);
	if (FUNC2(sc->tty.rfd, &rights) == -1)
		FUNC3(EX_OSERR, "Unable to apply rights for sandbox");
	if (FUNC1(sc->tty.rfd, cmds, FUNC5(cmds)) == -1)
		FUNC3(EX_OSERR, "Unable to apply rights for sandbox");
#endif

	uart_stdio = true;

	return (0);
}