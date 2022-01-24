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
struct smb_softc {int /*<<< orphan*/  sc_devnode; int /*<<< orphan*/  sc_dev; } ;
struct make_dev_args {int mda_mode; int /*<<< orphan*/  mda_unit; struct smb_softc* mda_si_drv1; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_devsw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 struct smb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct make_dev_args*) ; 
 int FUNC3 (struct make_dev_args*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smb_cdevsw ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct smb_softc *sc;
	struct make_dev_args mda;
	int error;

	sc = FUNC0(dev);
	sc->sc_dev = dev;

	FUNC2(&mda);
	mda.mda_devsw = &smb_cdevsw;
	mda.mda_unit = FUNC1(dev);
	mda.mda_uid = UID_ROOT;
	mda.mda_gid = GID_WHEEL;
	mda.mda_mode = 0600;
	mda.mda_si_drv1 = sc;
	error = FUNC3(&mda, &sc->sc_devnode, "smb%d", mda.mda_unit);
	return (error);
}