#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xenbusb_softc {int /*<<< orphan*/  xbs_lock; int /*<<< orphan*/  xbs_connecting_children; int /*<<< orphan*/  xbs_node; } ;
struct TYPE_4__ {uintptr_t callback_data; int /*<<< orphan*/  callback; void* node; } ;
struct TYPE_3__ {char* node; uintptr_t callback_data; int /*<<< orphan*/  callback; } ;
struct xenbus_device_ivars {int xd_state; char* xd_otherend_path; int /*<<< orphan*/ * xd_dev; TYPE_2__ xd_local_watch; void* xd_node; TYPE_1__ xd_otherend_watch; int /*<<< orphan*/  xd_otherend_path_len; void* xd_type; int /*<<< orphan*/  xd_node_len; int /*<<< orphan*/  xd_flags; int /*<<< orphan*/  xd_lock; } ;
struct sbuf {int dummy; } ;
typedef  enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  M_XENBUS ; 
 int M_ZERO ; 
 int /*<<< orphan*/  XDF_CONNECTING ; 
 int FUNC0 (int /*<<< orphan*/ *,struct xenbus_device_ivars*) ; 
 int /*<<< orphan*/  XST_NIL ; 
 int XenbusStateInitialising ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct xenbusb_softc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct xenbus_device_ivars*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 char* FUNC8 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*) ; 
 struct sbuf* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct sbuf*,char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*) ; 
 void* FUNC14 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct xenbus_device_ivars*) ; 
 int /*<<< orphan*/  xenbusb_local_watch_cb ; 
 int /*<<< orphan*/  xenbusb_otherend_watch_cb ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC21(device_t dev, const char *type, const char *id)
{
	struct xenbusb_softc *xbs;
	struct sbuf *devpath_sbuf;
	char *devpath;
	struct xenbus_device_ivars *ivars;
	int error;

	xbs = FUNC2(dev);
	devpath_sbuf = FUNC11();
	FUNC12(devpath_sbuf, "%s/%s/%s", xbs->xbs_node, type, id);
	FUNC10(devpath_sbuf);
	devpath = FUNC8(devpath_sbuf);

	ivars = FUNC4(sizeof(*ivars), M_XENBUS, M_ZERO|M_WAITOK);
	error = ENXIO;

	if (FUNC20(XST_NIL, devpath, "") != 0) {
		device_t child;
		enum xenbus_state state;
		char *statepath;

		child = FUNC18(dev, devpath);
		if (child != NULL) {
			/*
			 * We are already tracking this node
			 */
			error = 0;
			goto out;
		}
			
		state = FUNC17(devpath);
		if (state != XenbusStateInitialising) {
			/*
			 * Device is not new, so ignore it. This can
			 * happen if a device is going away after
			 * switching to Closed.
			 */
			FUNC7("xenbusb_add_device: Device %s ignored. "
			       "State %d\n", devpath, state);
			error = 0;
			goto out;
		}

		FUNC16(&ivars->xd_lock, "xdlock");
		ivars->xd_flags = XDF_CONNECTING;
		ivars->xd_node = FUNC14(devpath, M_XENBUS);
		ivars->xd_node_len = FUNC15(devpath);
		ivars->xd_type  = FUNC14(type, M_XENBUS);
		ivars->xd_state = XenbusStateInitialising;

		error = FUNC0(dev, ivars);
		if (error) {
			FUNC7("xenbus_update_device: %s no otherend id\n",
			    devpath); 
			goto out;
		}

		statepath = FUNC4(ivars->xd_otherend_path_len
		    + FUNC15("/state") + 1, M_XENBUS, M_WAITOK);
		FUNC13(statepath, "%s/state", ivars->xd_otherend_path);
		ivars->xd_otherend_watch.node = statepath;
		ivars->xd_otherend_watch.callback = xenbusb_otherend_watch_cb;
		ivars->xd_otherend_watch.callback_data = (uintptr_t)ivars;

		ivars->xd_local_watch.node = ivars->xd_node;
		ivars->xd_local_watch.callback = xenbusb_local_watch_cb;
		ivars->xd_local_watch.callback_data = (uintptr_t)ivars;

		FUNC5(&xbs->xbs_lock);
		xbs->xbs_connecting_children++;
		FUNC6(&xbs->xbs_lock);

		child = FUNC1(dev, NULL, -1);
		ivars->xd_dev = child;
		FUNC3(child, ivars);
	}

out:
	FUNC9(devpath_sbuf);
	if (error != 0)
		FUNC19(ivars);

	return (error);
}