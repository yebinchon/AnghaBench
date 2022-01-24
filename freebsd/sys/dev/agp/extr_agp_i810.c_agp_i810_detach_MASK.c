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
struct agp_i810_softc {int /*<<< orphan*/  sc_res; TYPE_2__* match; int /*<<< orphan*/  gatt; int /*<<< orphan*/  initial_aperture; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  res_spec; int /*<<< orphan*/  (* chipset_flush_teardown ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* deinstall_gatt ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_AGP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct agp_i810_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct agp_i810_softc *sc;

	sc = FUNC4(dev);
	FUNC1(dev);

	/* Clear the GATT base. */
	sc->match->driver->deinstall_gatt(dev);

	sc->match->driver->chipset_flush_teardown(dev);

	/* Put the aperture back the way it started. */
	FUNC0(dev, sc->initial_aperture);

	FUNC5(sc->gatt, M_AGP);
	FUNC3(dev, sc->match->driver->res_spec, sc->sc_res);
	FUNC2(dev);

	return (0);
}