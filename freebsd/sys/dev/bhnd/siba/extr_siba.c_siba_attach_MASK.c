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
struct siba_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct siba_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct siba_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct siba_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev)
{
	struct siba_softc	*sc;
	int			 error;

	sc = FUNC3(dev);
	sc->dev = dev;

	FUNC1(sc);

	/* Enumerate children */
	if ((error = FUNC4(dev))) {
		FUNC2(dev);
		FUNC0(sc);
		return (error);
	}

	return (0);
}