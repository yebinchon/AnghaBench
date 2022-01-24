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
typedef  scalar_t__ uint32_t ;
struct otus_softc {scalar_t__* phy_vals; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ar5416_phy_regs ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

uint32_t
FUNC2(struct otus_softc *sc, uint32_t reg)
{
	int i;

	for (i = 0; i < FUNC1(ar5416_phy_regs); i++)
		if (FUNC0(ar5416_phy_regs[i]) == reg)
			return sc->phy_vals[i];
	return 0;	/* Register not found. */
}