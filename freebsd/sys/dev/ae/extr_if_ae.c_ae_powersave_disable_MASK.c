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
typedef  int /*<<< orphan*/  ae_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AE_PHY_DBG_ADDR ; 
 int /*<<< orphan*/  AE_PHY_DBG_DATA ; 
 int AE_PHY_DBG_POWERSAVE ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(ae_softc_t *sc)
{
	uint32_t val;
	
	FUNC0(sc);

	FUNC2(sc, AE_PHY_DBG_ADDR, 0);
	val = FUNC1(sc, AE_PHY_DBG_DATA);
	if (val & AE_PHY_DBG_POWERSAVE) {
		val &= ~AE_PHY_DBG_POWERSAVE;
		FUNC2(sc, AE_PHY_DBG_DATA, val);
		FUNC3(1000);
	}
}