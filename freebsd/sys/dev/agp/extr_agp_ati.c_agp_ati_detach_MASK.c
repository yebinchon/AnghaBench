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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int u_int32_t ;
struct agp_ati_softc {int ag_entries; int /*<<< orphan*/  regs; scalar_t__ ag_virtual; scalar_t__ ag_vdir; int /*<<< orphan*/  initial_aperture; scalar_t__ is_rs300; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AGP_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATI_GART_BASE ; 
 int /*<<< orphan*/  ATI_GART_MMADDR ; 
 int ATI_RS100_APSIZE ; 
 int ATI_RS300_APSIZE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct agp_ati_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct agp_ati_softc *sc = FUNC5(dev);
	u_int32_t apsize_reg, temp;

	FUNC2(dev);

	if (sc->is_rs300)
		apsize_reg = ATI_RS300_APSIZE;
	else
		apsize_reg = ATI_RS100_APSIZE;

	/* Clear the GATT base */
	FUNC1(ATI_GART_BASE, 0);

	/* Put the aperture back the way it started. */
	FUNC0(dev, sc->initial_aperture);

	temp = FUNC7(dev, apsize_reg, 4);
	FUNC8(dev, apsize_reg, temp & ~1, 4);

	FUNC6((vm_offset_t)sc->ag_vdir, AGP_PAGE_SIZE);
	FUNC6((vm_offset_t)sc->ag_virtual, sc->ag_entries *
	    sizeof(u_int32_t));

	FUNC4(dev, SYS_RES_MEMORY, ATI_GART_MMADDR, sc->regs);
	FUNC3(dev);

	return 0;
}