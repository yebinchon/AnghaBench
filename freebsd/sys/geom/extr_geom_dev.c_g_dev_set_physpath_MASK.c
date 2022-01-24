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
struct g_dev_softc {struct cdev* sc_alias; struct cdev* sc_dev; } ;
struct g_consumer {struct g_dev_softc* private; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAKEDEV_WAITOK ; 
 int MAXPATHLEN ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct cdev*) ; 
 scalar_t__ FUNC1 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,struct g_consumer*,int*,char*) ; 
 char* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cdev**,struct cdev*,struct cdev*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(struct g_consumer *cp)
{
	struct g_dev_softc *sc;
	char *physpath;
	int error, physpath_len;

	if (FUNC1(cp, 1, 0, 0) != 0)
		return;

	sc = cp->private;
	physpath_len = MAXPATHLEN;
	physpath = FUNC4(physpath_len, M_WAITOK|M_ZERO);
	error = FUNC3("GEOM::physpath", cp, &physpath_len, physpath);
	FUNC1(cp, -1, 0, 0);
	if (error == 0 && FUNC6(physpath) != 0) {
		struct cdev *dev, *old_alias_dev;
		struct cdev **alias_devp;

		dev = sc->sc_dev;
		old_alias_dev = sc->sc_alias;
		alias_devp = (struct cdev **)&sc->sc_alias;
		FUNC5(MAKEDEV_WAITOK, alias_devp, dev,
		    old_alias_dev, physpath);
	} else if (sc->sc_alias) {
		FUNC0((struct cdev *)sc->sc_alias);
		sc->sc_alias = NULL;
	}
	FUNC2(physpath);
}