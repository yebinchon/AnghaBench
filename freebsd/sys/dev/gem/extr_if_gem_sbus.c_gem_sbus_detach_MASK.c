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
struct gem_softc {int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gem_softc*) ; 
 size_t GEM_RES_INTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gem_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gem_softc*) ; 
 int /*<<< orphan*/  gem_sbus_res_spec ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct gem_softc *sc;

	sc = FUNC3(dev);
	FUNC2(dev, sc->sc_res[GEM_RES_INTR], sc->sc_ih);
	FUNC4(sc);
	FUNC0(sc);
	FUNC1(dev, gem_sbus_res_spec, sc->sc_res);
	return (0);
}