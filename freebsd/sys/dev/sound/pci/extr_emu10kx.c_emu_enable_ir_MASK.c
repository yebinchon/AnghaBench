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
struct emu_sc_info {int enable_ir; int /*<<< orphan*/  dev; scalar_t__ is_emu10k1; scalar_t__ is_ca0102; scalar_t__ is_emu10k2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EMU_A_IOCFG ; 
 int EMU_A_IOCFG_GPOUT1 ; 
 int EMU_A_IOCFG_GPOUT2 ; 
 int /*<<< orphan*/  EMU_HCFG ; 
 int EMU_HCFG_GPOUT1 ; 
 int EMU_HCFG_GPOUT2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct emu_sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct emu_sc_info*,int /*<<< orphan*/ ,int,int) ; 

void
FUNC4(struct emu_sc_info *sc)
{
	uint32_t iocfg;

	if (sc->is_emu10k2 || sc->is_ca0102) {
		iocfg = FUNC2(sc, EMU_A_IOCFG, 2);
		FUNC3(sc, EMU_A_IOCFG, iocfg | EMU_A_IOCFG_GPOUT2, 2);
		FUNC0(500);
		FUNC3(sc, EMU_A_IOCFG, iocfg | EMU_A_IOCFG_GPOUT1 | EMU_A_IOCFG_GPOUT2, 2);
		FUNC0(500);
		FUNC3(sc, EMU_A_IOCFG, iocfg | EMU_A_IOCFG_GPOUT1, 2);
		FUNC0(100);
		FUNC3(sc, EMU_A_IOCFG, iocfg, 2);
		FUNC1(sc->dev, "Audigy IR MIDI events enabled.\n");
		sc->enable_ir = 1;
	}
	if (sc->is_emu10k1) {
		iocfg = FUNC2(sc, EMU_HCFG, 4);
		FUNC3(sc, EMU_HCFG, iocfg | EMU_HCFG_GPOUT2, 4);
		FUNC0(500);
		FUNC3(sc, EMU_HCFG, iocfg | EMU_HCFG_GPOUT1 | EMU_HCFG_GPOUT2, 4);
		FUNC0(100);
		FUNC3(sc, EMU_HCFG, iocfg, 4);
		FUNC1(sc->dev, "SB Live! IR MIDI events enabled.\n");
		sc->enable_ir = 1;
	}
}