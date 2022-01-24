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
struct xenbus_device_ivars {int /*<<< orphan*/  xd_local_watch; int /*<<< orphan*/  xd_otherend_watch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ DS_NOTPRESENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  XenbusStateClosed ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct xenbus_device_ivars* FUNC1 (int /*<<< orphan*/ ) ; 
 struct xenbusb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xenbusb_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	device_t *kids;
	struct xenbus_device_ivars *ivars;
	int i, count, error;

	if (FUNC0(dev, &kids, &count) == 0) {
		for (i = 0; i < count; i++) {
			if (FUNC3(kids[i]) != DS_NOTPRESENT) {
				/*
				 * We already know about this one.
				 * Make sure it's still here.
				 */
				FUNC10(dev, kids[i]);
				continue;
			}

			error = FUNC4(kids[i]);
			if (error == ENXIO) {
				struct xenbusb_softc *xbs;

				/*
				 * We don't have a PV driver for this device.
				 * However, an emulated device we do support
				 * may share this backend.  Hide the node from
				 * XenBus until the next rescan, but leave it's
				 * state unchanged so we don't inadvertently
				 * prevent attachment of any emulated device.
				 */
				FUNC7(dev, kids[i]);

				/*
				 * Since the XenStore state of this device
				 * still indicates a pending attach, manually
				 * release it's hold on the boot process.
				 */
				xbs = FUNC2(dev);
				FUNC9(xbs);

				continue;
			} else if (error) {
				/*
				 * Transition device to the closed state
				 * so the world knows that attachment will
				 * not occur.
				 */
				FUNC6(kids[i], XenbusStateClosed);

				/*
				 * Remove our record of this device.
				 * So long as it remains in the closed
				 * state in the XenStore, we will not find
				 * it again.  The state will only change
				 * if the control domain actively reconfigures
				 * this device.
				 */
				FUNC7(dev, kids[i]);

				continue;
			}
			/*
			 * Augment default newbus provided dynamic sysctl
			 * variables with the standard ivar contents of
			 * XenBus devices.
			 */
			FUNC8(kids[i]);

			/*
			 * Now that we have a driver managing this device
			 * that can receive otherend state change events,
			 * hook up a watch for them.
			 */
			ivars = FUNC1(kids[i]);
			FUNC11(&ivars->xd_otherend_watch);
			FUNC11(&ivars->xd_local_watch);
		}
		FUNC5(kids, M_TEMP);
	}

	return (0);
}