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
struct xbd_softc {int /*<<< orphan*/ * xbd_disk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XenbusStateClosed ; 
 int /*<<< orphan*/  XenbusStateClosing ; 
 struct xbd_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct xbd_softc *sc = FUNC1(dev);

	FUNC4(dev, XenbusStateClosing);

	FUNC0("xbd_closing: %s removed\n", FUNC3(dev));

	if (sc->xbd_disk != NULL) {
		FUNC2(sc->xbd_disk);
		sc->xbd_disk = NULL;
	}

	FUNC4(dev, XenbusStateClosed); 
}