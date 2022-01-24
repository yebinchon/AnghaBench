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
struct agp_amd_softc {int /*<<< orphan*/  regs; int /*<<< orphan*/  gatt; int /*<<< orphan*/  initial_aperture; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD751_ATTBASE ; 
 int /*<<< orphan*/  AGP_AMD751_MODECTRL ; 
 int /*<<< orphan*/  AGP_AMD751_REGISTERS ; 
 int /*<<< orphan*/  AGP_AMD751_STATUS ; 
 int AGP_AMD751_STATUS_GCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct agp_amd_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct agp_amd_softc *sc = FUNC8(dev);

	FUNC5(dev);

	/* Disable the TLB.. */
	FUNC2(AGP_AMD751_STATUS,
	       FUNC1(AGP_AMD751_STATUS) & ~AGP_AMD751_STATUS_GCE);
	
	/* Disable host-agp sync */
	FUNC9(dev, AGP_AMD751_MODECTRL, 0x00, 1);
	
	/* Clear the GATT base */
	FUNC3(AGP_AMD751_ATTBASE, 0);

	/* Put the aperture back the way it started. */
	FUNC0(dev, sc->initial_aperture);

	FUNC4(sc->gatt);
	FUNC6(dev);

	FUNC7(dev, SYS_RES_MEMORY,
			     AGP_AMD751_REGISTERS, sc->regs);

	return 0;
}