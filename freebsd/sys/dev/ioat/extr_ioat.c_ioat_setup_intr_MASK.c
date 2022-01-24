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
typedef  int uint32_t ;
struct ioat_softc {int rid; int /*<<< orphan*/ * tag; int /*<<< orphan*/ * res; int /*<<< orphan*/  device; } ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FALSE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  IOAT_INTRCTRL_MASTER_INT_EN ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ioat_softc*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  g_force_legacy_interrupts ; 
 int /*<<< orphan*/  ioat_interrupt_handler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ioat_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ioat_softc *ioat)
{
	uint32_t num_vectors;
	int error;
	boolean_t use_msix;
	boolean_t force_legacy_interrupts;

	use_msix = FALSE;
	force_legacy_interrupts = FALSE;

	if (!g_force_legacy_interrupts && FUNC5(ioat->device) >= 1) {
		num_vectors = 1;
		FUNC4(ioat->device, &num_vectors);
		if (num_vectors == 1)
			use_msix = TRUE;
	}

	if (use_msix) {
		ioat->rid = 1;
		ioat->res = FUNC0(ioat->device, SYS_RES_IRQ,
		    &ioat->rid, RF_ACTIVE);
	} else {
		ioat->rid = 0;
		ioat->res = FUNC0(ioat->device, SYS_RES_IRQ,
		    &ioat->rid, RF_SHAREABLE | RF_ACTIVE);
	}
	if (ioat->res == NULL) {
		FUNC2(0, "bus_alloc_resource failed\n");
		return (ENOMEM);
	}

	ioat->tag = NULL;
	error = FUNC1(ioat->device, ioat->res, INTR_MPSAFE |
	    INTR_TYPE_MISC, NULL, ioat_interrupt_handler, ioat, &ioat->tag);
	if (error != 0) {
		FUNC2(0, "bus_setup_intr failed\n");
		return (error);
	}

	FUNC3(ioat, IOAT_INTRCTRL_MASTER_INT_EN);
	return (0);
}