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
struct ural_softc {scalar_t__ rf_rev; int* rf_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t RAL_RF1 ; 
 int RAL_RF1_AUTOTUNE ; 
 size_t RAL_RF3 ; 
 int RAL_RF3_AUTOTUNE ; 
 scalar_t__ RAL_RF_2523 ; 
 int /*<<< orphan*/  FUNC1 (struct ural_softc*,size_t,int) ; 

__attribute__((used)) static void
FUNC2(struct ural_softc *sc)
{
	uint32_t tmp;

	if (sc->rf_rev != RAL_RF_2523) {
		tmp = sc->rf_regs[RAL_RF1] & ~RAL_RF1_AUTOTUNE;
		FUNC1(sc, RAL_RF1, tmp);
	}

	tmp = sc->rf_regs[RAL_RF3] & ~RAL_RF3_AUTOTUNE;
	FUNC1(sc, RAL_RF3, tmp);

	FUNC0(2, "disabling RF autotune\n");
}