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
struct pwmc_softc {int /*<<< orphan*/  chan; int /*<<< orphan*/  cdev; int /*<<< orphan*/  dev; } ;
struct make_dev_args {int mda_flags; int mda_mode; struct pwmc_softc* mda_si_drv1; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_devsw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GID_OPERATOR ; 
 int MAKEDEV_CHECKNAME ; 
 int MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pwmc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct make_dev_args*) ; 
 int FUNC5 (struct make_dev_args*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwm_cdevsw ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pwmc_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct pwmc_softc *sc;
	struct make_dev_args args;
	int error;

	sc = FUNC1(dev);
	sc->dev = dev;

	if ((error = FUNC6(dev, &sc->chan)) != 0)
		return (error);

	FUNC4(&args);
	args.mda_flags = MAKEDEV_CHECKNAME | MAKEDEV_WAITOK;
	args.mda_devsw = &pwm_cdevsw;
	args.mda_uid = UID_ROOT;
	args.mda_gid = GID_OPERATOR;
	args.mda_mode = 0660;
	args.mda_si_drv1 = sc;
	error = FUNC5(&args, &sc->cdev, "pwm/pwmc%d.%d",
	    FUNC2(FUNC0(dev)), sc->chan);
	if (error != 0) {
		FUNC3(dev, "Failed to make PWM device\n");
		return (error);
	}

	FUNC7(sc);

	return (0);
}