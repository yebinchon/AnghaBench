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
 scalar_t__ FUNC2 (struct mge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGE_REG_SMI ; 
 scalar_t__ MGE_SMI_BUSY ; 
 scalar_t__ MGE_SMI_DATA_MASK ; 
 int /*<<< orphan*/  MGE_SMI_DELAY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int MGE_SMI_MASK ; 
 int MGE_SMI_READ ; 
 scalar_t__ MGE_SMI_READVALID ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  MGE_SMI_WRITE_DELAY ; 
 scalar_t__ MGE_SMI_WRITE_RETRIES ; 
 int /*<<< orphan*/  FUNC5 (struct mge_softc*,int /*<<< orphan*/ ,int) ; 
 struct mge_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static uint32_t
FUNC8(device_t dev, int phy, int reg)
{
	uint32_t timeout;
	uint32_t ret;
	struct mge_softc *sc;

	sc = FUNC6(dev);
	FUNC0(sc != NULL, ("NULL softc ptr!"));
	timeout = MGE_SMI_WRITE_RETRIES;

	FUNC3();
	while (--timeout &&
	    (FUNC2(sc, MGE_REG_SMI) & MGE_SMI_BUSY))
		FUNC1(MGE_SMI_WRITE_DELAY);

	if (timeout == 0) {
		FUNC7(dev, "SMI write timeout.\n");
		ret = ~0U;
		goto out;
	}

	FUNC5(sc, MGE_REG_SMI, MGE_SMI_MASK &
	    (MGE_SMI_READ | (reg << 21) | (phy << 16)));

	/* Wait till finished. */
	timeout = MGE_SMI_WRITE_RETRIES;
	while (--timeout &&
	    !((FUNC2(sc, MGE_REG_SMI) & MGE_SMI_READVALID)))
		FUNC1(MGE_SMI_WRITE_DELAY);

	if (timeout == 0) {
		FUNC7(dev, "SMI write validation timeout.\n");
		ret = ~0U;
		goto out;
	}

	/* Wait for the data to update in the SMI register */
	FUNC1(MGE_SMI_DELAY);
	ret = FUNC2(sc, MGE_REG_SMI) & MGE_SMI_DATA_MASK;

out:
	FUNC4();
	return (ret);

}