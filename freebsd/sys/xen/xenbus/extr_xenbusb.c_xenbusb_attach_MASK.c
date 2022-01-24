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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_3__ {char* node; uintptr_t callback_data; int /*<<< orphan*/  callback; } ;
struct TYPE_4__ {void* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct xenbusb_softc {char* xbs_node; int xbs_connecting_children; TYPE_1__ xbs_device_watch; int /*<<< orphan*/  xbs_probe_children; int /*<<< orphan*/  xbs_flags; TYPE_2__ xbs_attach_ch; void* xbs_dev; int /*<<< orphan*/  xbs_id_components; int /*<<< orphan*/  xbs_lock; } ;
typedef  void* device_t ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  XBS_ATTACH_CH_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct xenbusb_softc* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xenbusb_devices_changed ; 
 int /*<<< orphan*/  FUNC4 (struct xenbusb_softc*) ; 
 int /*<<< orphan*/  xenbusb_nop_confighook_cb ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  xenbusb_probe_children_cb ; 
 int /*<<< orphan*/  FUNC6 (struct xenbusb_softc*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int
FUNC8(device_t dev, char *bus_node, u_int id_components)
{
	struct xenbusb_softc *xbs;

	xbs = FUNC2(dev);
	FUNC3(&xbs->xbs_lock, "xenbusb softc lock", NULL, MTX_DEF);
	xbs->xbs_node = bus_node;
	xbs->xbs_id_components = id_components;
	xbs->xbs_dev = dev;

	/*
	 * Since XenBus buses are attached to the XenStore, and
	 * the XenStore does not probe children until after interrupt
	 * services are available, this config hook is used solely
	 * to ensure that the remainder of the boot process (e.g.
	 * mount root) is deferred until child devices are adequately
	 * probed.  We unblock the boot process as soon as the
	 * connecting child count in our softc goes to 0.
	 */
	xbs->xbs_attach_ch.ich_func = xenbusb_nop_confighook_cb;
	xbs->xbs_attach_ch.ich_arg = dev;
	FUNC1(&xbs->xbs_attach_ch);
	xbs->xbs_flags |= XBS_ATTACH_CH_ACTIVE;
	xbs->xbs_connecting_children = 1;

	/*
	 * The subtree for this bus type may not yet exist
	 * causing initial enumeration to fail.  We still
	 * want to return success from our attach though
	 * so that we are ready to handle devices for this
	 * bus when they are dynamically attached to us
	 * by a Xen management action.
	 */
	(void)FUNC4(xbs);
	FUNC5(dev);

	xbs->xbs_device_watch.node = bus_node;
	xbs->xbs_device_watch.callback = xenbusb_devices_changed;
	xbs->xbs_device_watch.callback_data = (uintptr_t)xbs;

	FUNC0(&xbs->xbs_probe_children, 0, xenbusb_probe_children_cb, dev);

	FUNC7(&xbs->xbs_device_watch);

	FUNC6(xbs);

	return (0);
}