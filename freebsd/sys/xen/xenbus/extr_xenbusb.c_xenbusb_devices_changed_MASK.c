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
typedef  int u_int ;
struct xs_watch {scalar_t__ callback_data; } ;
struct xenbusb_softc {int xbs_id_components; int /*<<< orphan*/  xbs_probe_children; int /*<<< orphan*/  xbs_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_XENBUS ; 
 unsigned int XS_WATCH_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC6(struct xs_watch *watch, const char **vec,
			unsigned int len)
{
	struct xenbusb_softc *xbs;
	device_t dev;
	char *node;
	char *type;
	char *id;
	char *p;
	u_int component;

	xbs = (struct xenbusb_softc *)watch->callback_data;
	dev = xbs->xbs_dev;

	if (len <= XS_WATCH_PATH) {
		FUNC0(dev, "xenbusb_devices_changed: "
			      "Short Event Data.\n");
		return;
	}

	node = FUNC3(vec[XS_WATCH_PATH], M_XENBUS);
	p = FUNC2(node, '/');
	if (p == NULL)
		goto out;
	*p = 0;
	type = p + 1;

	p = FUNC2(type, '/');
	if (p == NULL)
		goto out;
	*p++ = 0;

	/*
	 * Extract the device ID.  A device ID has one or more path
	 * components separated by the '/' character.
	 *
	 * e.g. "<frontend vm id>/<frontend dev id>" for backend devices.
	 */
	id = p;
	for (component = 0; component < xbs->xbs_id_components; component++) {
		p = FUNC2(p, '/');
		if (p == NULL)
			break;
		p++;
	}
	if (p != NULL)
		*p = 0;

	if (*id != 0 && component >= xbs->xbs_id_components - 1) {
		FUNC5(xbs->xbs_dev, type, id);
		FUNC4(taskqueue_thread, &xbs->xbs_probe_children);
	}
out:
	FUNC1(node, M_XENBUS);
}