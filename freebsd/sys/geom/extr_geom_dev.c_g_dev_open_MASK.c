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
struct thread {int /*<<< orphan*/  td_ucred; } ;
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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 

__attribute__((used)) static int
FUNC10(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct g_consumer *cp;
	struct g_dev_softc *sc;
	int error, r, w, e;

	cp = dev->si_drv2;
	if (cp == NULL)
		return (ENXIO);		/* g_dev_taste() not done yet */
	FUNC5(G_T_ACCESS, "g_dev_open(%s, %d, %d, %p)",
	    cp->geom->name, flags, fmt, td);

	r = flags & FREAD ? 1 : 0;
	w = flags & FWRITE ? 1 : 0;
#ifdef notyet
	e = flags & O_EXCL ? 1 : 0;
#else
	e = 0;
#endif

	/*
	 * This happens on attempt to open a device node with O_EXEC.
	 */
	if (r + w + e == 0)
		return (EINVAL);

	if (w) {
		/*
		 * When running in very secure mode, do not allow
		 * opens for writing of any disks.
		 */
		error = FUNC8(td->td_ucred, 2);
		if (error)
			return (error);
	}
	FUNC3();
	error = FUNC2(cp, r, w, e);
	FUNC4();
	if (error == 0) {
		sc = cp->private;
		FUNC6(&sc->sc_mtx);
		if (sc->sc_open == 0 && (sc->sc_active & SC_A_ACTIVE) != 0)
			FUNC9(&sc->sc_active);
		sc->sc_open += r + w + e;
		if (sc->sc_open == 0)
			FUNC0(&sc->sc_active, SC_A_OPEN);
		else
			FUNC1(&sc->sc_active, SC_A_OPEN);
		FUNC7(&sc->sc_mtx);
	}
	return (error);
}