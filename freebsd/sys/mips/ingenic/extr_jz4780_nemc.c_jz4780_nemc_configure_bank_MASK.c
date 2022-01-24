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
typedef  int /*<<< orphan*/  val ;
typedef  int uint32_t ;
typedef  int u_int ;
struct jz4780_nemc_softc {int banks; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct jz4780_nemc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_nemc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct jz4780_nemc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int JZ_NEMC_SMCR_SMT_MASK ; 
 int JZ_NEMC_SMCR_SMT_NORMAL ; 
 int JZ_NEMC_SMCR_SMT_SHIFT ; 
 int JZ_NEMC_SMCR_STRV_MASK ; 
 int JZ_NEMC_SMCR_STRV_SHIFT ; 
 int JZ_NEMC_SMCR_TAH_MASK ; 
 int JZ_NEMC_SMCR_TAH_SHIFT ; 
 int JZ_NEMC_SMCR_TAS_MASK ; 
 int JZ_NEMC_SMCR_TAS_SHIFT ; 
 int JZ_NEMC_SMCR_TAW_MASK ; 
 int JZ_NEMC_SMCR_TAW_SHIFT ; 
 int JZ_NEMC_SMCR_TBP_MASK ; 
 int JZ_NEMC_SMCR_TBP_SHIFT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int* ticks_to_tBP_tAW ; 

__attribute__((used)) static int
FUNC7(struct jz4780_nemc_softc *sc,
        device_t dev, u_int bank)
{
	uint32_t smcr, cycles;
	phandle_t node;
	pcell_t   val;

	/* Check if bank is configured already */
	if (sc->banks & (1 << bank))
		return 0;

	smcr = FUNC0(sc, FUNC3(bank));

	smcr &= ~JZ_NEMC_SMCR_SMT_MASK;
	smcr |= JZ_NEMC_SMCR_SMT_NORMAL << JZ_NEMC_SMCR_SMT_SHIFT;

	node = FUNC6(dev);
	if (FUNC4(node, "ingenic,nemc-tAS", &val, sizeof(val)) > 0) {
		cycles = FUNC2(sc, val);
		if (cycles > 15) {
			FUNC5(sc->dev,
			    "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
			    "ingenic,nemc-tAS", val, cycles, 15);
			return -1;
		}
		smcr &= ~JZ_NEMC_SMCR_TAS_MASK;
		smcr |= cycles << JZ_NEMC_SMCR_TAS_SHIFT;
	}

	if (FUNC4(node, "ingenic,nemc-tAH", &val, sizeof(val)) > 0) {
		cycles = FUNC2(sc, val);
		if (cycles > 15) {
			FUNC5(sc->dev,
			    "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
			    "ingenic,nemc-tAH", val, cycles, 15);
			return -1;
		}
		smcr &= ~JZ_NEMC_SMCR_TAH_MASK;
		smcr |= cycles << JZ_NEMC_SMCR_TAH_SHIFT;
	}

	if (FUNC4(node, "ingenic,nemc-tBP", &val, sizeof(val)) > 0) {
		cycles = FUNC2(sc, val);
		if (cycles > 31) {
			FUNC5(sc->dev,
			    "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
			    "ingenic,nemc-tBP", val, cycles, 15);
			return -1;
		}
		smcr &= ~JZ_NEMC_SMCR_TBP_MASK;
		smcr |= ticks_to_tBP_tAW[cycles] << JZ_NEMC_SMCR_TBP_SHIFT;
	}

	if (FUNC4(node, "ingenic,nemc-tAW", &val, sizeof(val)) > 0) {
		cycles = FUNC2(sc, val);
		if (cycles > 31) {
			FUNC5(sc->dev,
			    "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
			    "ingenic,nemc-tAW", val, cycles, 15);
			return -1;
		}
		smcr &= ~JZ_NEMC_SMCR_TAW_MASK;
		smcr |= ticks_to_tBP_tAW[cycles] << JZ_NEMC_SMCR_TAW_SHIFT;
	}

	if (FUNC4(node, "ingenic,nemc-tSTRV", &val, sizeof(val)) > 0) {
		cycles = FUNC2(sc, val);
		if (cycles > 63) {
			FUNC5(sc->dev,
			    "invalid value of %s %u (%u cycles), maximum %u cycles supported\n",
			    "ingenic,nemc-tSTRV", val, cycles, 15);
			return -1;
		}
		smcr &= ~JZ_NEMC_SMCR_STRV_MASK;
		smcr |= cycles << JZ_NEMC_SMCR_STRV_SHIFT;
	}
	FUNC1(sc, FUNC3(bank), smcr);
	sc->banks |= (1 << bank);
	return 0;
}