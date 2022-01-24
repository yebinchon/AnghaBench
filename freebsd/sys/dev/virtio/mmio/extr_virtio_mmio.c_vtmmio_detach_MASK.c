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
struct vtmmio_softc {int /*<<< orphan*/ ** res; int /*<<< orphan*/ * vtmmio_child_dev; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vtmmio_softc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vtmmio_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct vtmmio_softc *sc;
	device_t child;
	int error;

	sc = FUNC2(dev);

	if ((child = sc->vtmmio_child_dev) != NULL) {
		error = FUNC1(dev, child);
		if (error)
			return (error);
		sc->vtmmio_child_dev = NULL;
	}

	FUNC3(sc);

	if (sc->res[0] != NULL) {
		FUNC0(dev, SYS_RES_MEMORY, 0,
		    sc->res[0]);
		sc->res[0] = NULL;
	}

	return (0);
}