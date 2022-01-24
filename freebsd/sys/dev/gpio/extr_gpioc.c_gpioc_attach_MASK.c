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
struct make_dev_args {int mda_mode; struct gpioc_softc* mda_si_drv1; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_devsw; } ;
struct gpioc_softc {int sc_unit; int /*<<< orphan*/  sc_ctl_dev; int /*<<< orphan*/  sc_pdev; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gpioc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpioc_cdevsw ; 
 int /*<<< orphan*/  FUNC3 (struct make_dev_args*) ; 
 int FUNC4 (struct make_dev_args*,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	int err;
	struct gpioc_softc *sc;
	struct make_dev_args devargs;

	sc = FUNC1(dev);
	sc->sc_dev = dev;
	sc->sc_pdev = FUNC0(dev);
	sc->sc_unit = FUNC2(dev);
	FUNC3(&devargs);
	devargs.mda_devsw = &gpioc_cdevsw;
	devargs.mda_uid = UID_ROOT;
	devargs.mda_gid = GID_WHEEL;
	devargs.mda_mode = 0600;
	devargs.mda_si_drv1 = sc;
	err = FUNC4(&devargs, &sc->sc_ctl_dev, "gpioc%d", sc->sc_unit);
	if (err != 0) {
		FUNC5("Failed to create gpioc%d", sc->sc_unit);
		return (ENXIO);
	}

	return (0);
}