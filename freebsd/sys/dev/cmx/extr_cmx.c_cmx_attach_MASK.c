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
struct cmx_softc {TYPE_1__* cdev; scalar_t__ dying; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct cmx_softc* si_drv1; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  cmx_cdevsw ; 
 struct cmx_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev)
{
	struct cmx_softc *sc = FUNC0(dev);

	if (!sc || sc->dying)
		return ENXIO;

	sc->cdev = FUNC3(&cmx_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
	                    "cmx%d", FUNC1(dev));
	if (!sc->cdev) {
		FUNC2(dev, "failed to create character device\n");
		return ENOMEM;
	}
	sc->cdev->si_drv1 = sc;

	return 0;
}