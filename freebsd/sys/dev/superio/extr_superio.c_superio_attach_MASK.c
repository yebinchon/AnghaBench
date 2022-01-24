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
struct siosc {TYPE_2__* chardev; TYPE_1__* known_devices; int /*<<< orphan*/  devlist; int /*<<< orphan*/  conf_lock; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {struct siosc* si_drv1; } ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  ldn; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUPERIO_DEV_NONE ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct siosc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  superio_cdevsw ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct siosc *sc = FUNC4(dev);
	int i;

	FUNC8(&sc->conf_lock, FUNC3(dev), "superio", MTX_DEF);
	FUNC0(&sc->devlist);

	for (i = 0; sc->known_devices[i].type != SUPERIO_DEV_NONE; i++) {
		FUNC9(dev, sc->known_devices[i].type,
		    sc->known_devices[i].ldn);
	}

	FUNC2(dev);
	FUNC1(dev);

	sc->chardev = FUNC7(&superio_cdevsw, FUNC5(dev),
	    UID_ROOT, GID_WHEEL, 0600, "superio%d", FUNC5(dev));
	if (sc->chardev == NULL)
		FUNC6(dev, "failed to create character device\n");
	else
		sc->chardev->si_drv1 = sc;
	return (0);
}