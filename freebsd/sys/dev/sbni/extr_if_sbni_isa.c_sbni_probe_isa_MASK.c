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
struct sbni_softc {int /*<<< orphan*/  io_res; int /*<<< orphan*/  io_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SBNI_PORTS ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sbni_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  sbni_ids ; 
 scalar_t__ FUNC6 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbni_softc*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct sbni_softc *sc;
	int error;

	error = FUNC0(FUNC2(dev), dev, sbni_ids);
	if (error && error != ENOENT)
		return (error);

	sc = FUNC3(dev);

 	sc->io_res = FUNC1(dev, SYS_RES_IOPORT,
 						 &sc->io_rid, SBNI_PORTS,
 						 RF_ACTIVE);
	if (!sc->io_res) {
		FUNC5("sbni: cannot allocate io ports!\n");
		return (ENOENT);
	}

	if (FUNC6(sc) != 0) {
		FUNC7(sc);
		return (ENXIO);
	}

	FUNC4(dev, "Granch SBNI12/ISA adapter");
	return (0);
}