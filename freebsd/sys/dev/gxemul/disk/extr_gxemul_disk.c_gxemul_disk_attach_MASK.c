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
struct gxemul_disk_softc {int /*<<< orphan*/  sc_size; int /*<<< orphan*/ * sc_provider; int /*<<< orphan*/ * sc_geom; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 struct gxemul_disk_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct gxemul_disk_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gxemul_disk_attach_geom ; 
 int /*<<< orphan*/  gxemul_disk_controller_mutex ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct gxemul_disk_softc *sc;
	unsigned diskid;
	int error;

	diskid = FUNC1(dev);

	sc = FUNC0(dev);
	sc->sc_dev = dev;
	sc->sc_geom = NULL;
	sc->sc_provider = NULL;

	FUNC4(&gxemul_disk_controller_mutex);
	error = FUNC3(diskid, &sc->sc_size);
	if (error != 0) {
		FUNC5(&gxemul_disk_controller_mutex);
		return (error);
	}
	FUNC5(&gxemul_disk_controller_mutex);

	FUNC2(gxemul_disk_attach_geom, sc, M_WAITOK, NULL);

	return (0);
}