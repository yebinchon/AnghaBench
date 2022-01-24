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
struct bhnd_pwrctl_softc {int /*<<< orphan*/  clkres_list; } ;
struct bhnd_pwrctl_clkres {scalar_t__ clock; int /*<<< orphan*/  owner; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bhnd_clock ;

/* Variables and functions */
 scalar_t__ BHND_CLOCK_DYN ; 
 int /*<<< orphan*/  BHND_PWRCTL_WAR_RUN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pwrctl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pwrctl_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bhnd_pwrctl_clkres*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct bhnd_pwrctl_clkres*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bhnd_pwrctl_clkres ; 
 struct bhnd_pwrctl_clkres* FUNC5 (struct bhnd_pwrctl_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bhnd_pwrctl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cr_link ; 
 struct bhnd_pwrctl_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bhnd_pwrctl_clkres*,int /*<<< orphan*/ ) ; 
 struct bhnd_pwrctl_clkres* FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev, device_t child, bhnd_clock clock)
{
	struct bhnd_pwrctl_softc	*sc;
	struct bhnd_pwrctl_clkres	*clkres;
	int				 error;

	sc = FUNC7(dev);
	error = 0;

	FUNC1(sc);

	clkres = FUNC5(sc, child);

	/* BHND_CLOCK_DYN discards the clock reservation entirely */
	if (clock == BHND_CLOCK_DYN) {
		/* nothing to clean up? */
		if (clkres == NULL) {
			FUNC2(sc);
			return (0);
		}

		/* drop reservation and apply clock transition */
		FUNC4(&sc->clkres_list, clkres,
		    bhnd_pwrctl_clkres, cr_link);

		if ((error = FUNC6(sc, BHND_PWRCTL_WAR_RUN))) {
			FUNC8(dev, "clock transition failed: %d\n",
			    error);

			/* restore reservation */
			FUNC3(&sc->clkres_list, clkres, cr_link);

			FUNC2(sc);
			return (error);
		}

		/* deallocate orphaned reservation */
		FUNC9(clkres, M_DEVBUF);

		FUNC2(sc);
		return (0);
	}

	/* create (or update) reservation */
	if (clkres == NULL) {
		clkres = FUNC10(sizeof(struct bhnd_pwrctl_clkres), M_DEVBUF,
		    M_NOWAIT);
		if (clkres == NULL)
			return (ENOMEM);

		clkres->owner = child;
		clkres->clock = clock;

		FUNC3(&sc->clkres_list, clkres, cr_link);
	} else {
		FUNC0(clkres->owner == child, ("invalid owner"));
		clkres->clock = clock;
	}

	/* apply clock transition */
	error = FUNC6(sc, BHND_PWRCTL_WAR_RUN);
	if (error) {
		FUNC4(&sc->clkres_list, clkres, bhnd_pwrctl_clkres,
		    cr_link);
		FUNC9(clkres, M_DEVBUF);
	}

	FUNC2(sc);
	return (error);
}