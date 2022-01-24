#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct agp_nvidia_softc {int wbc_mask; TYPE_1__* gatt; int /*<<< orphan*/  mc1_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ag_entries; scalar_t__ ag_virtual; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_NVIDIA_1_WBC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5 (device_t dev)
{
	struct agp_nvidia_softc *sc;
	u_int32_t wbc_reg, temp;
	volatile u_int32_t *ag_virtual;
	int i, pages;

	sc = (struct agp_nvidia_softc *)FUNC1(dev);

	if (sc->wbc_mask) {
		wbc_reg = FUNC3(sc->mc1_dev, AGP_NVIDIA_1_WBC, 4);
		wbc_reg |= sc->wbc_mask;
		FUNC4(sc->mc1_dev, AGP_NVIDIA_1_WBC, wbc_reg, 4);

		/* Wait no more than 3 seconds. */
		for (i = 0; i < 3000; i++) {
			wbc_reg = FUNC3(sc->mc1_dev,
						  AGP_NVIDIA_1_WBC, 4);
			if ((sc->wbc_mask & wbc_reg) == 0)
				break;
			else
				FUNC0(1000);
		}
		if (i == 3000)
			FUNC2(dev,
				"TLB flush took more than 3 seconds.\n");
	}

	ag_virtual = (volatile u_int32_t *)sc->gatt->ag_virtual;

	/* Flush TLB entries. */
	pages = sc->gatt->ag_entries * sizeof(u_int32_t) / PAGE_SIZE;
	for(i = 0; i < pages; i++)
		temp = ag_virtual[i * PAGE_SIZE / sizeof(u_int32_t)];
	for(i = 0; i < pages; i++)
		temp = ag_virtual[i * PAGE_SIZE / sizeof(u_int32_t)];
}