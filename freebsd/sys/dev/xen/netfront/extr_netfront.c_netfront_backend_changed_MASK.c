#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct netfront_info {int xn_reset; int /*<<< orphan*/  xbdev; TYPE_1__* xn_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int XenbusState ;
struct TYPE_2__ {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
#define  XenbusStateClosed 136 
#define  XenbusStateClosing 135 
#define  XenbusStateConnected 134 
#define  XenbusStateInitWait 133 
#define  XenbusStateInitialised 132 
#define  XenbusStateInitialising 131 
#define  XenbusStateReconfigured 130 
#define  XenbusStateReconfiguring 129 
#define  XenbusStateUnknown 128 
 struct netfront_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_info*) ; 
 int const FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC8 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct netfront_info*) ; 

__attribute__((used)) static void
FUNC10(device_t dev, XenbusState newstate)
{
	struct netfront_info *sc = FUNC3(dev);

	FUNC2("newstate=%d\n", newstate);

	FUNC1(sc->xn_ifp->if_vnet);

	switch (newstate) {
	case XenbusStateInitialising:
	case XenbusStateInitialised:
	case XenbusStateUnknown:
	case XenbusStateReconfigured:
	case XenbusStateReconfiguring:
		break;
	case XenbusStateInitWait:
		if (FUNC6(dev) != XenbusStateInitialising)
			break;
		if (FUNC8(sc) != 0)
			break;
		/* Switch to connected state before kicking the rings. */
		FUNC7(sc->xbdev, XenbusStateConnected);
		FUNC9(sc);
		break;
	case XenbusStateClosing:
		FUNC7(dev, XenbusStateClosed);
		break;
	case XenbusStateClosed:
		if (sc->xn_reset) {
			FUNC5(sc);
			FUNC7(dev, XenbusStateInitialising);
			sc->xn_reset = false;
		}
		break;
	case XenbusStateConnected:
#ifdef INET
		netfront_send_fake_arp(dev, sc);
#endif
		break;
	}

	FUNC0();
}