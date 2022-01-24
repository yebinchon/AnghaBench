#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_l2cap {int /*<<< orphan*/  l2cap_bdaddr; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  local ;
typedef  int int32_t ;
typedef  TYPE_2__* hid_device_p ;
typedef  TYPE_3__* bthid_session_p ;
struct TYPE_11__ {scalar_t__ vkbd; scalar_t__ umouse; scalar_t__ ukbd; TYPE_1__* srv; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  ctrl; } ;
struct TYPE_10__ {scalar_t__ keyboard; scalar_t__ mouse; } ;
struct TYPE_9__ {scalar_t__ maxfd; int /*<<< orphan*/  rfdset; scalar_t__ uinput; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int32_t
FUNC10(bthid_session_p s)
{
	hid_device_p d = FUNC2(&s->bdaddr);
	struct sockaddr_l2cap   local;
	socklen_t               len;

	if (d->keyboard) {
		/* Open /dev/vkbdctl */
		s->vkbd = FUNC5("/dev/vkbdctl", O_RDWR);
		if (s->vkbd < 0) {
			FUNC7(LOG_ERR, "Could not open /dev/vkbdctl " \
				"for %s. %s (%d)", FUNC1(&s->bdaddr, NULL),
				FUNC6(errno), errno);
			return (-1);
		}
		/* Register session's vkbd descriptor (if needed) for read */
		FUNC0(s->vkbd, &s->srv->rfdset);
		if (s->vkbd > s->srv->maxfd)
			s->srv->maxfd = s->vkbd;
	}

	/* Pass device for probing */
	FUNC4(s);

	/* Take local bdaddr */
	len = sizeof(local);
	FUNC3(s->ctrl, (struct sockaddr *) &local, &len);

	if (d->mouse && s->srv->uinput) {
		s->umouse = FUNC9(d, &local.l2cap_bdaddr);
		if (s->umouse < 0) {
			FUNC7(LOG_ERR, "Could not open /dev/uinput " \
				"for %s. %s (%d)", FUNC1(&s->bdaddr,
				NULL), FUNC6(errno), errno);
			return (-1);
		}
	}
	if (d->keyboard && s->srv->uinput) {
		s->ukbd = FUNC8(d, &local.l2cap_bdaddr);
		if (s->ukbd < 0) {
			FUNC7(LOG_ERR, "Could not open /dev/uinput " \
				"for %s. %s (%d)", FUNC1(&s->bdaddr,
				NULL), FUNC6(errno), errno);
			return (-1);
		}
		/* Register session's ukbd descriptor (if needed) for read */
		FUNC0(s->ukbd, &s->srv->rfdset);
		if (s->ukbd > s->srv->maxfd)
			s->srv->maxfd = s->ukbd;
	}
	return (0);
}