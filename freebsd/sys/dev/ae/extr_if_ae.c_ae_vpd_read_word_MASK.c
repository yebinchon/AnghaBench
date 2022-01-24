#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ae_softc_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int AE_VPD_CAP_ADDR_MASK ; 
 int AE_VPD_CAP_ADDR_SHIFT ; 
 int AE_VPD_CAP_DONE ; 
 int /*<<< orphan*/  AE_VPD_CAP_REG ; 
 int /*<<< orphan*/  AE_VPD_DATA_REG ; 
 int AE_VPD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(ae_softc_t *sc, int reg, uint32_t *word)
{
	uint32_t val;
	int i;

	FUNC1(sc, AE_VPD_DATA_REG, 0);	/* Clear register value. */

	/*
	 * VPD registers start at offset 0x100. Read them.
	 */
	val = 0x100 + reg * 4;
	FUNC1(sc, AE_VPD_CAP_REG, (val << AE_VPD_CAP_ADDR_SHIFT) &
	    AE_VPD_CAP_ADDR_MASK);
	for (i = 0; i < AE_VPD_TIMEOUT; i++) {
		FUNC2(2000);
		val = FUNC0(sc, AE_VPD_CAP_REG);
		if ((val & AE_VPD_CAP_DONE) != 0)
			break;
	}
	if (i == AE_VPD_TIMEOUT) {
		FUNC3(sc->dev, "timeout reading VPD register %d.\n",
		    reg);
		return (ETIMEDOUT);
	}
	*word = FUNC0(sc, AE_VPD_DATA_REG);
	return (0);
}