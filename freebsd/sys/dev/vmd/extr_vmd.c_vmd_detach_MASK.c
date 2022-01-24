#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rm_end; } ;
struct TYPE_3__ {TYPE_2__ rman; } ;
struct vmd_softc {TYPE_1__ vmd_bus; int /*<<< orphan*/ * vmd_child; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vmd_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmd_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct vmd_softc *sc;
	int err;

	sc = FUNC2(dev);
	if (sc->vmd_child != NULL) {
		err = FUNC0(sc->vmd_child);
		if (err)
			return (err);
		err = FUNC1(dev, sc->vmd_child);
		if (err)
			return (err);
	}
	if (sc->vmd_bus.rman.rm_end != 0)
		FUNC3(&sc->vmd_bus.rman);

	FUNC4(sc);
	return (0);
}