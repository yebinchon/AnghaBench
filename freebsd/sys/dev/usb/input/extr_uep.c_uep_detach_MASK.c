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
struct uep_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/  xfer; int /*<<< orphan*/  fifo; int /*<<< orphan*/  evdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  UEP_N_TRANSFER ; 
 struct uep_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct uep_softc *sc = FUNC0(dev);

#ifdef EVDEV_SUPPORT
	evdev_free(sc->evdev);
#else
	FUNC3(&sc->fifo);
#endif

	FUNC4(sc->xfer, UEP_N_TRANSFER);

	FUNC2(&sc->mtx);

	return (0);
}