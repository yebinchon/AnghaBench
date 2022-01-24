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
struct thread {int dummy; } ;
struct g_dev_softc {scalar_t__ sc_open; int sc_active; int /*<<< orphan*/  sc_mtx; } ;
struct g_consumer {struct g_dev_softc* private; TYPE_1__* geom; } ;
struct cdev {struct g_consumer* si_drv2; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  G_T_ACCESS ; 
 int O_EXCL ; 
 int SC_A_ACTIVE ; 
 int /*<<< orphan*/  SC_A_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct g_consumer*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct thread*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct g_consumer *cp;
	struct g_dev_softc *sc;
	int error, r, w, e;

	cp = dev->si_drv2;
	if (cp == NULL)
		return (ENXIO);
	FUNC5(G_T_ACCESS, "g_dev_close(%s, %d, %d, %p)",
	    cp->geom->name, flags, fmt, td);

	r = flags & FREAD ? -1 : 0;
	w = flags & FWRITE ? -1 : 0;
#ifdef notyet
	e = flags & O_EXCL ? -1 : 0;
#else
	e = 0;
#endif

	/*
	 * The vgonel(9) - caused by eg. forced unmount of devfs - calls
	 * VOP_CLOSE(9) on devfs vnode without any FREAD or FWRITE flags,
	 * which would result in zero deltas, which in turn would cause
	 * panic in g_access(9).
	 *
	 * Note that we cannot zero the counters (ie. do "r = cp->acr"
	 * etc) instead, because the consumer might be opened in another
	 * devfs instance.
	 */
	if (r + w + e == 0)
		return (EINVAL);

	sc = cp->private;
	FUNC7(&sc->sc_mtx);
	sc->sc_open += r + w + e;
	if (sc->sc_open == 0)
		FUNC0(&sc->sc_active, SC_A_OPEN);
	else
		FUNC1(&sc->sc_active, SC_A_OPEN);
	while (sc->sc_open == 0 && (sc->sc_active & SC_A_ACTIVE) != 0)
		FUNC6(&sc->sc_active, &sc->sc_mtx, 0, "g_dev_close", hz / 10);
	FUNC8(&sc->sc_mtx);
	FUNC3();
	error = FUNC2(cp, r, w, e);
	FUNC4();
	return (error);
}