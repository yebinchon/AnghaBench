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
struct xbd_softc {int /*<<< orphan*/  xbd_state; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XBD_STATE_CONNECTED ; 
 struct xbd_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xbd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct xbd_softc*) ; 
 scalar_t__ xen_suspend_cancelled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct xbd_softc *sc = FUNC1(dev);

	if (xen_suspend_cancelled) {
		sc->xbd_state = XBD_STATE_CONNECTED;
		return (0);
	}

	FUNC0("xbd_resume: %s\n", FUNC4(dev));

	FUNC2(sc);
	FUNC3(sc);
	return (0);
}