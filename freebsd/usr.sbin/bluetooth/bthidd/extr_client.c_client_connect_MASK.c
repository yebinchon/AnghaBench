#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int socklen_t ;
typedef  scalar_t__ int32_t ;
typedef  TYPE_1__* hid_device_p ;
typedef  int /*<<< orphan*/  error ;
typedef  TYPE_2__* bthid_session_p ;
typedef  TYPE_3__* bthid_server_p ;
struct TYPE_12__ {scalar_t__ maxfd; int /*<<< orphan*/  rfdset; int /*<<< orphan*/  wfdset; } ;
struct TYPE_11__ {int state; scalar_t__ ctrl; int intr; int /*<<< orphan*/  bdaddr; } ;
struct TYPE_10__ {int /*<<< orphan*/  new_device; int /*<<< orphan*/  interrupt_psm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int OPEN ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
#define  W4CTRL 129 
#define  W4INTR 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ connect_in_progress ; 
 scalar_t__ errno ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int32_t
FUNC13(bthid_server_p srv, int32_t fd)
{
	bthid_session_p	s;
	hid_device_p	d;
	int32_t		error;
	socklen_t	len;

	FUNC2(srv != NULL);
	FUNC2(fd >= 0);

	s = FUNC7(srv, fd);
	FUNC2(s != NULL);

	d = FUNC5(&s->bdaddr);
	FUNC2(d != NULL);

	error = 0;
	len = sizeof(error);
	if (FUNC6(fd, SOL_SOCKET, SO_ERROR, &error, &len) < 0) {
		FUNC11(LOG_ERR, "Could not get socket error for %s. %s (%d)",
			FUNC3(&s->bdaddr, NULL), FUNC10(errno), errno);
		FUNC8(s);
		connect_in_progress = 0;

		return (-1);
	}

	if (error != 0) {
		FUNC11(LOG_ERR, "Could not connect to %s. %s (%d)",
			FUNC3(&s->bdaddr, NULL), FUNC10(error), error);
		FUNC8(s);
		connect_in_progress = 0;

		return (0);
	}

	switch (s->state) {
	case W4CTRL: /* Control channel is open */
		FUNC2(s->ctrl == fd);
		FUNC2(s->intr == -1);

		/* Open interrupt channel */
		s->intr = FUNC4(&s->bdaddr, d->interrupt_psm);
		if (s->intr < 0) { 
			FUNC11(LOG_ERR, "Could not open interrupt channel " \
				"to %s. %s (%d)", FUNC3(&s->bdaddr, NULL),
				FUNC10(errno), errno);
			FUNC8(s);
			connect_in_progress = 0;

			return (-1);
		}

		s->state = W4INTR;

		FUNC1(s->intr, &srv->wfdset);
		if (s->intr > srv->maxfd)
			srv->maxfd = s->intr;

		d->new_device = 0; /* reset new device flag */
		FUNC12();
		break;

	case W4INTR: /* Interrupt channel is open */
		FUNC2(s->ctrl != -1);
		FUNC2(s->intr == fd);

		s->state = OPEN;
		connect_in_progress = 0;

		/* Create kbd/mouse after both channels are established */
		if (FUNC9(s) < 0) {
			FUNC8(s);
			return (-1);
		}
		break;

	default:
		FUNC2(0);
		break;
	}

	/* Move fd to from the write fd set into read fd set */
	FUNC0(fd, &srv->wfdset);
	FUNC1(fd, &srv->rfdset);

	return (0);
}