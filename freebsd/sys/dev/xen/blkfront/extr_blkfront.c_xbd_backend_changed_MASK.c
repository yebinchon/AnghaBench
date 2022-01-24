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
struct xbd_softc {int /*<<< orphan*/ * xbd_disk; int /*<<< orphan*/  xbd_users; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int XenbusState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
#define  XenbusStateClosed 136 
#define  XenbusStateClosing 135 
#define  XenbusStateConnected 134 
#define  XenbusStateInitWait 133 
#define  XenbusStateInitialised 132 
#define  XenbusStateInitialising 131 
#define  XenbusStateReconfigured 130 
#define  XenbusStateReconfiguring 129 
#define  XenbusStateUnknown 128 
 struct xbd_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xbd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct xbd_softc*) ; 

__attribute__((used)) static void
FUNC8(device_t dev, XenbusState backend_state)
{
	struct xbd_softc *sc = FUNC2(dev);

	FUNC0("backend_state=%d\n", backend_state);

	switch (backend_state) {
	case XenbusStateUnknown:
	case XenbusStateInitialising:
	case XenbusStateReconfigured:
	case XenbusStateReconfiguring:
	case XenbusStateClosed:
		break;

	case XenbusStateInitWait:
	case XenbusStateInitialised:
		FUNC7(sc);
		break;

	case XenbusStateConnected:
		FUNC7(sc);
		FUNC6(sc);
		break;

	case XenbusStateClosing:
		if (sc->xbd_users > 0) {
			FUNC3(dev, "detaching with pending users\n");
			FUNC1(sc->xbd_disk != NULL,
			    ("NULL disk with pending users\n"));
			FUNC4(sc->xbd_disk);
		} else {
			FUNC5(dev);
		}
		break;	
	}
}