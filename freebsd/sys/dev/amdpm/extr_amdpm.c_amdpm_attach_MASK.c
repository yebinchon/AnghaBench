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
typedef  int u_char ;
struct amdpm_softc {int /*<<< orphan*/  smbus; int /*<<< orphan*/  lock; int /*<<< orphan*/ * res; int /*<<< orphan*/  rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMDPCI_GEN_CONFIG_PM ; 
 int /*<<< orphan*/  AMDPCI_PMBASE ; 
 int AMDPCI_PMIOEN ; 
 scalar_t__ AMDPM_VENDORID_AMD ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  NFPCI_PMBASE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct amdpm_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct amdpm_softc *amdpm_sc = FUNC5(dev);
	u_char val_b;
	
	/* Enable I/O block access */
	val_b = FUNC9(dev, AMDPCI_GEN_CONFIG_PM, 1);
	FUNC10(dev, AMDPCI_GEN_CONFIG_PM, val_b | AMDPCI_PMIOEN, 1);

	/* Allocate I/O space */
	if (FUNC8(dev) == AMDPM_VENDORID_AMD)
		amdpm_sc->rid = AMDPCI_PMBASE;
	else
		amdpm_sc->rid = NFPCI_PMBASE;
	amdpm_sc->res = FUNC1(dev, SYS_RES_IOPORT,
		&amdpm_sc->rid, RF_ACTIVE);
	
	if (amdpm_sc->res == NULL) {
		FUNC6(dev, "could not map i/o space\n");
		return (ENXIO);
	}	     

	FUNC7(&amdpm_sc->lock, FUNC4(dev), "amdpm", MTX_DEF);

	/* Allocate a new smbus device */
	amdpm_sc->smbus = FUNC3(dev, "smbus", -1);
	if (!amdpm_sc->smbus) {
		FUNC0(dev);
		return (EINVAL);
	}

	FUNC2(dev);

	return (0);
}