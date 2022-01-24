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
struct xenbusb_softc {int dummy; } ;
struct xenbus_device_ivars {int xd_state; int xd_flags; int /*<<< orphan*/  xd_lock; int /*<<< orphan*/  xd_node; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 int XDF_CONNECTING ; 
#define  XENBUS_IVAR_NODE 132 
#define  XENBUS_IVAR_OTHEREND_ID 131 
#define  XENBUS_IVAR_OTHEREND_PATH 130 
#define  XENBUS_IVAR_STATE 129 
#define  XENBUS_IVAR_TYPE 128 
 int /*<<< orphan*/  XST_NIL ; 
 int XenbusStateClosed ; 
 int XenbusStateClosing ; 
 int XenbusStateConnected ; 
 struct xenbus_device_ivars* FUNC0 (int /*<<< orphan*/ ) ; 
 struct xenbusb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct xenbusb_softc*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*,int*) ; 

int
FUNC9(device_t dev, device_t child, int index, uintptr_t value)
{
	struct xenbus_device_ivars *ivars = FUNC0(child);
	enum xenbus_state newstate;
	int currstate;

	switch (index) {
	case XENBUS_IVAR_STATE:
	{
		int error;

		newstate = (enum xenbus_state)value;
		FUNC2(&ivars->xd_lock);
		if (ivars->xd_state == newstate) {
			error = 0;
			goto out;
		}

		error = FUNC8(XST_NIL, ivars->xd_node, "state",
		    NULL, "%d", &currstate);
		if (error)
			goto out;

		do {
			error = FUNC7(XST_NIL, ivars->xd_node, "state",
			    "%d", newstate);
		} while (error == EAGAIN);
		if (error) {
			/*
			 * Avoid looping through xenbus_dev_fatal()
			 * which calls xenbus_write_ivar to set the
			 * state to closing.
			 */
			if (newstate != XenbusStateClosing)
				FUNC5(dev, error,
						 "writing new state");
			goto out;
		}
		ivars->xd_state = newstate;

		if ((ivars->xd_flags & XDF_CONNECTING) != 0
		 && (newstate == XenbusStateClosed
		  || newstate == XenbusStateConnected)) {
			struct xenbusb_softc *xbs;

			ivars->xd_flags &= ~XDF_CONNECTING;
			xbs = FUNC1(dev);
			FUNC6(xbs);
		}

		FUNC4(&ivars->xd_state);
	out:
		FUNC3(&ivars->xd_lock);
		return (error);
	}

	case XENBUS_IVAR_NODE:
	case XENBUS_IVAR_TYPE:
	case XENBUS_IVAR_OTHEREND_ID:
	case XENBUS_IVAR_OTHEREND_PATH:
		/*
		 * These variables are read-only.
		 */
		return (EINVAL);
	}

	return (ENOENT);
}