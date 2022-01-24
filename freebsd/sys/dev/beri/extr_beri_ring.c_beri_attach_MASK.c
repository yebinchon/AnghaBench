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
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct beri_softc {int /*<<< orphan*/  beri_mtx; TYPE_1__ beri_rsel; TYPE_2__* cdev; int /*<<< orphan*/  devname; int /*<<< orphan*/  dev; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {struct beri_softc* si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  beri_cdevsw ; 
 int /*<<< orphan*/  beri_spec ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct beri_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct beri_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct beri_softc *sc;

	sc = FUNC1(dev);
	sc->dev = dev;

	if (FUNC0(dev, beri_spec, sc->res)) {
		FUNC2(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC8(sc->res[0]);
	sc->bsh = FUNC7(sc->res[0]);

	if (FUNC6(sc)) {
		FUNC2(sc->dev, "Can't get FDT values\n");
		return (ENXIO);
	}

	sc->cdev = FUNC4(&beri_cdevsw, 0, UID_ROOT, GID_WHEEL,
	    S_IRWXU, "%s", sc->devname);
	if (sc->cdev == NULL) {
		FUNC2(dev, "Failed to create character device.\n");
		return (ENXIO);
	}

	sc->cdev->si_drv1 = sc;

	FUNC5(&sc->beri_mtx, "beri_mtx", NULL, MTX_DEF);
	FUNC3(&sc->beri_rsel.si_note, &sc->beri_mtx);

	return (0);
}