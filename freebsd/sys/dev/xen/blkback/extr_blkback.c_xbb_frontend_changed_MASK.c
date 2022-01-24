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
struct xbb_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int XenbusState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
#define  XenbusStateClosed 132 
#define  XenbusStateClosing 131 
#define  XenbusStateConnected 130 
#define  XenbusStateInitialised 129 
#define  XenbusStateInitialising 128 
 struct xbb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xbb_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct xbb_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(device_t dev, XenbusState frontend_state)
{
	struct xbb_softc *xbb = FUNC1(dev);

	FUNC0("frontend_state=%s, xbb_state=%s\n",
	        FUNC9(frontend_state),
		FUNC9(FUNC7(xbb->dev)));

	switch (frontend_state) {
	case XenbusStateInitialising:
		break;
	case XenbusStateInitialised:
	case XenbusStateConnected:
		FUNC4(xbb);
		break;
	case XenbusStateClosing:
	case XenbusStateClosed:
		FUNC2(&xbb->lock);
		FUNC5(xbb);
		FUNC3(&xbb->lock);
		if (frontend_state == XenbusStateClosed)
			FUNC8(xbb->dev, XenbusStateClosed);
		break;
	default:
		FUNC6(xbb->dev, EINVAL, "saw state %d at frontend",
				 frontend_state);
		break;
	}
}