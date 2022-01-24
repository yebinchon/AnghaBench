#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_l2cap {int /*<<< orphan*/  l2cap_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  l2addr ;
typedef  scalar_t__ int32_t ;
typedef  TYPE_1__* hid_device_p ;
typedef  TYPE_2__* bthid_session_p ;
typedef  TYPE_3__* bthid_server_p ;
struct TYPE_15__ {scalar_t__ ctrl; scalar_t__ maxfd; int /*<<< orphan*/  rfdset; } ;
struct TYPE_14__ {int ctrl; scalar_t__ state; int intr; } ;
struct TYPE_13__ {scalar_t__ new_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 scalar_t__ OPEN ; 
 scalar_t__ W4CTRL ; 
 scalar_t__ W4INTR ; 
 scalar_t__ FUNC1 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (TYPE_3__*,TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int32_t
FUNC13(bthid_server_p srv, int32_t fd)
{
	bthid_session_p		s;
	hid_device_p		d;
	struct sockaddr_l2cap	l2addr;
	int32_t			new_fd;
	socklen_t		len;

	len = sizeof(l2addr);
	if ((new_fd = FUNC1(fd, (struct sockaddr *) &l2addr, &len)) < 0) {
		FUNC11(LOG_ERR, "Could not accept %s connection. %s (%d)",
			(fd == srv->ctrl)? "control" : "interrupt",
			FUNC10(errno), errno);
		return (-1);
	}

	/* Is device configured? */
	if ((d = FUNC5(&l2addr.l2cap_bdaddr)) == NULL) {
		FUNC11(LOG_ERR, "Rejecting %s connection from %s. " \
			"Device not configured",
			(fd == srv->ctrl)? "control" : "interrupt",
			FUNC3(&l2addr.l2cap_bdaddr, NULL));
		FUNC4(new_fd);
		return (-1);
	}

	/* Check if we have session for the device */
	if ((s = FUNC6(srv, &l2addr.l2cap_bdaddr)) == NULL) {
		d->new_device = 0; /* reset new device flag */
		FUNC12();

		/* Create new inbound session */
		if ((s = FUNC8(srv, d)) == NULL) {
			FUNC11(LOG_CRIT, "Could not open inbound session "
				"for %s", FUNC3(&l2addr.l2cap_bdaddr, NULL));
			FUNC4(new_fd);
			return (-1);
		}
	}

	/* Update descriptors */
	if (fd == srv->ctrl) {
		FUNC2(s->ctrl == -1);
		s->ctrl = new_fd;
		s->state = (s->intr == -1)? W4INTR : OPEN;
	} else {
		FUNC2(s->intr == -1);
		s->intr = new_fd;
		s->state = (s->ctrl == -1)? W4CTRL : OPEN;
	}

	FUNC0(new_fd, &srv->rfdset);
	if (new_fd > srv->maxfd)
		srv->maxfd = new_fd;

	FUNC11(LOG_NOTICE, "Accepted %s connection from %s",
		(fd == srv->ctrl)? "control" : "interrupt",
		FUNC3(&l2addr.l2cap_bdaddr, NULL));

	/* Create virtual kbd/mouse after both channels are established */
	if (s->state == OPEN && FUNC9(s) < 0) {
		FUNC7(s);
		return (-1);
	}

	return (0);
}