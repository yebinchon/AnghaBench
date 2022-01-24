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
struct TYPE_2__ {int rfd; int wfd; int opened; } ;
struct uart_softc {TYPE_1__ tty; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  cap_ioctl_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_EVENT ; 
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  CAP_READ ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  TIOCGETA ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  TIOCSETA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int) ; 

__attribute__((used)) static int
FUNC8(struct uart_softc *sc, const char *opts)
{
#ifndef WITHOUT_CAPSICUM
	cap_rights_t rights;
	cap_ioctl_t cmds[] = { TIOCGETA, TIOCSETA, TIOCGWINSZ };
#endif
	int fd;

	fd = FUNC7(opts, O_RDWR | O_NONBLOCK);
	if (fd < 0)
		return (-1);

	if (!FUNC5(fd)) {
		FUNC3(fd);
		return (-1);
	}

	sc->tty.rfd = sc->tty.wfd = fd;
	sc->tty.opened = true;

#ifndef WITHOUT_CAPSICUM
	FUNC0(&rights, CAP_EVENT, CAP_IOCTL, CAP_READ, CAP_WRITE);
	if (FUNC2(fd, &rights) == -1)
		FUNC4(EX_OSERR, "Unable to apply rights for sandbox");
	if (FUNC1(fd, cmds, FUNC6(cmds)) == -1)
		FUNC4(EX_OSERR, "Unable to apply rights for sandbox");
#endif

	return (0);
}