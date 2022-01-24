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
struct bhnd_pwrctl_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_PWRCTL_WAR_UP ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pwrctl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pwrctl_softc*) ; 
 int FUNC2 (struct bhnd_pwrctl_softc*) ; 
 int FUNC3 (struct bhnd_pwrctl_softc*,int /*<<< orphan*/ ) ; 
 struct bhnd_pwrctl_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct bhnd_pwrctl_softc	*sc;
	int				 error;

	sc = FUNC4(dev);

	FUNC0(sc);

	/* Re-initialize power control registers */
	if ((error = FUNC2(sc))) {
		FUNC5(sc->dev, "PWRCTL init failed: %d\n", error);
		goto cleanup;
	}

	/* Restore clock state */
	if ((error = FUNC3(sc, BHND_PWRCTL_WAR_UP))) {
		FUNC5(sc->dev, "clock state restore failed: %d\n",
		    error);
		goto cleanup;
	}

cleanup:
	FUNC1(sc);
	return (error);
}