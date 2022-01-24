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
struct spigen_softc {int /*<<< orphan*/ * sc_cdev; int /*<<< orphan*/  sc_adev; int /*<<< orphan*/  sc_mtx; void* sc_dev; } ;
struct make_dev_args {int mda_mode; int mda_unit; void* mda_si_drv1; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_cr; int /*<<< orphan*/ * mda_devsw; int /*<<< orphan*/  mda_flags; } ;
typedef  void* device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  MAKEDEV_WAITOK ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int SPIBUS_CS_HIGH ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*) ; 
 struct spigen_softc* FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct make_dev_args*) ; 
 int FUNC7 (struct make_dev_args*,int /*<<< orphan*/ **,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int*) ; 
 int /*<<< orphan*/  spigen_cdevsw ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct spigen_softc *sc;
	const int unit = FUNC4(dev);
	int cs, res;
	struct make_dev_args mda;

	FUNC9(dev, &cs);
	cs &= ~SPIBUS_CS_HIGH; /* trim 'cs high' bit */

	sc = FUNC3(dev);
	sc->sc_dev = dev;

	FUNC8(&sc->sc_mtx, FUNC1(dev), NULL, MTX_DEF);

	FUNC6(&mda);
	mda.mda_flags = MAKEDEV_WAITOK;
	mda.mda_devsw = &spigen_cdevsw;
	mda.mda_cr = NULL;
	mda.mda_uid = UID_ROOT;
	mda.mda_gid = GID_OPERATOR;
	mda.mda_mode = 0660;
	mda.mda_unit = unit;
	mda.mda_si_drv1 = dev;

	res = FUNC7(&mda, &(sc->sc_cdev), "spigen%d.%d",
	    FUNC4(FUNC2(dev)), cs);
	if (res) {
		return res;
	}

#ifdef SPIGEN_LEGACY_CDEVNAME
	res = make_dev_alias_p(0, &sc->sc_adev, sc->sc_cdev, "spigen%d", unit);
	if (res) {
		if (sc->sc_cdev) {
			destroy_dev(sc->sc_cdev);
			sc->sc_cdev = NULL;
		}
		return res;
	}
#endif

	return (0);
}