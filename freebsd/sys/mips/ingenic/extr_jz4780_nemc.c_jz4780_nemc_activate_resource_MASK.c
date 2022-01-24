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
typedef  int /*<<< orphan*/  u_int ;
struct resource {int dummy; } ;
struct jz4780_nemc_softc {int /*<<< orphan*/  simplebus_sc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct jz4780_nemc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct jz4780_nemc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct resource*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	struct jz4780_nemc_softc *sc;
	u_int bank;
	int err;

	if (type == SYS_RES_MEMORY) {
		sc = FUNC1(bus);

		/* Figure out on what bank device is residing */
		err = FUNC3(&sc->simplebus_sc, r, &bank);
		if (err == 0) {
			/* Attempt to configure the bank if not done already */
			err = FUNC2(sc, child, bank);
			if (err != 0)
				return (err);
		}
	}

	/* Call default implementation to finish the work */
	return (FUNC0(bus, child,
		type, rid, r));
}