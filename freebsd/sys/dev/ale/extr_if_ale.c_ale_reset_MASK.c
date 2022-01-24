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
struct ale_softc {int /*<<< orphan*/  ale_dev; } ;

/* Variables and functions */
 int ALE_IDLE_STATUS ; 
 int ALE_MASTER_CFG ; 
 int ALE_RESET_TIMEOUT ; 
 int FUNC0 (struct ale_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ale_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MASTER_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC4(struct ale_softc *sc)
{
	uint32_t reg;
	int i;

	/* Initialize PCIe module. From Linux. */
	FUNC1(sc, 0x1008, FUNC0(sc, 0x1008) | 0x8000);

	FUNC1(sc, ALE_MASTER_CFG, MASTER_RESET);
	for (i = ALE_RESET_TIMEOUT; i > 0; i--) {
		FUNC2(10);
		if ((FUNC0(sc, ALE_MASTER_CFG) & MASTER_RESET) == 0)
			break;
	}
	if (i == 0)
		FUNC3(sc->ale_dev, "master reset timeout!\n");

	for (i = ALE_RESET_TIMEOUT; i > 0; i--) {
		if ((reg = FUNC0(sc, ALE_IDLE_STATUS)) == 0)
			break;
		FUNC2(10);
	}

	if (i == 0)
		FUNC3(sc->ale_dev, "reset timeout(0x%08x)!\n", reg);
}