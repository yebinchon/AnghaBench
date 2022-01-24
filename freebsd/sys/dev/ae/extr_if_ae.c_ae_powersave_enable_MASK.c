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
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(ae_softc_t *sc)
{
	uint32_t val;
	
	FUNC0(sc);

	/*
	 * XXX magic numbers.
	 */
	FUNC2(sc, AE_PHY_DBG_ADDR, 0);
	val = FUNC1(sc, AE_PHY_DBG_DATA);
	FUNC2(sc, AE_PHY_DBG_ADDR, val | 0x1000);
	FUNC2(sc, AE_PHY_DBG_ADDR, 2);
	FUNC2(sc, AE_PHY_DBG_DATA, 0x3000);
	FUNC2(sc, AE_PHY_DBG_ADDR, 3);
	FUNC2(sc, AE_PHY_DBG_DATA, 0);
}