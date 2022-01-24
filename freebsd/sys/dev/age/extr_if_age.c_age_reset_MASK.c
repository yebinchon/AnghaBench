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
struct age_softc {int /*<<< orphan*/  age_dev; } ;

/* Variables and functions */
 int AGE_IDLE_STATUS ; 
 int AGE_MASTER_CFG ; 
 int AGE_RESET_TIMEOUT ; 
 int FUNC0 (struct age_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MASTER_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct age_softc *sc)
{
	uint32_t reg;
	int i;

	FUNC1(sc, AGE_MASTER_CFG, MASTER_RESET);
	FUNC0(sc, AGE_MASTER_CFG);
	FUNC2(1000);
	for (i = AGE_RESET_TIMEOUT; i > 0; i--) {
		if ((reg = FUNC0(sc, AGE_IDLE_STATUS)) == 0)
			break;
		FUNC2(10);
	}

	if (i == 0)
		FUNC3(sc->age_dev, "reset timeout(0x%08x)!\n", reg);
	/* Initialize PCIe module. From Linux. */
	FUNC1(sc, 0x12FC, 0x6500);
	FUNC1(sc, 0x1008, FUNC0(sc, 0x1008) | 0x8000);
}