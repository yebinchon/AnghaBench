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
struct agp_softc {int /*<<< orphan*/  as_lock; int /*<<< orphan*/ * as_aperture; int /*<<< orphan*/  as_aperture_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct agp_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(device_t dev)
{
	struct agp_softc *sc = FUNC1(dev);

	if (sc->as_aperture != NULL)
		FUNC0(dev, SYS_RES_MEMORY, sc->as_aperture_rid,
		    sc->as_aperture);
	FUNC2(&sc->as_lock);
}