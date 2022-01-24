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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTINTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCICFG_INTR_CTRL ; 
 int /*<<< orphan*/  devcfg ; 

void
FUNC2(POCE_SOFTC sc)
{
	uint32_t reg;
	
	reg = FUNC0(sc, devcfg, PCICFG_INTR_CTRL);
	reg &= ~HOSTINTR_MASK;
	FUNC1(sc, devcfg, PCICFG_INTR_CTRL, reg);
}