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
struct bhndb_softc {int /*<<< orphan*/  bus_res; int /*<<< orphan*/  services; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev)
{
	struct bhndb_softc	*sc;
	int			 error;

	sc = FUNC5(dev);

	/* Detach children */
	if ((error = FUNC3(dev)))
		return (error);

	/* Delete children */
	if ((error = FUNC4(dev)))
		return (error);

	/* Clean up our service registry */
	if ((error = FUNC1(&sc->services)))
		return (error);

	/* Clean up our driver state. */
	FUNC2(sc->bus_res);
	
	FUNC0(sc);

	return (0);
}