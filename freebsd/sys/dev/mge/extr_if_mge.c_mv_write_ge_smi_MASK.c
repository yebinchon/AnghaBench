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
typedef  scalar_t__ uint32_t ;
struct mge_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGE_REG_SMI ; 
 int MGE_SMI_BUSY ; 
 scalar_t__ MGE_SMI_DATA_MASK ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int MGE_SMI_MASK ; 
 int /*<<< orphan*/  MGE_SMI_READ_DELAY ; 
 scalar_t__ MGE_SMI_READ_RETRIES ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int MGE_SMI_WRITE ; 
 int /*<<< orphan*/  FUNC5 (struct mge_softc*,int /*<<< orphan*/ ,int) ; 
 struct mge_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC8(device_t dev, int phy, int reg, uint32_t value)
{
	uint32_t timeout;
	struct mge_softc *sc;

	sc = FUNC6(dev);
	FUNC0(sc != NULL, ("NULL softc ptr!"));

	FUNC3();
	timeout = MGE_SMI_READ_RETRIES;
	while (--timeout &&
	    (FUNC2(sc, MGE_REG_SMI) & MGE_SMI_BUSY))
		FUNC1(MGE_SMI_READ_DELAY);

	if (timeout == 0) {
		FUNC7(dev, "SMI read timeout.\n");
		goto out;
	}

	FUNC5(sc, MGE_REG_SMI, MGE_SMI_MASK &
	    (MGE_SMI_WRITE | (reg << 21) | (phy << 16) |
	    (value & MGE_SMI_DATA_MASK)));

out:
	FUNC4();
}