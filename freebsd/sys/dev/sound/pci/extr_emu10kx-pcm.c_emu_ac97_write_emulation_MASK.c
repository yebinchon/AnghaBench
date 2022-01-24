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
struct emu_pcm_info {int* ac97_state; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
#define  AC97_MIX_MASTER 131 
#define  AC97_MIX_PCM 130 
#define  AC97_MIX_RGAIN 129 
#define  AC97_REG_RECSEL 128 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  EMU_AC97ADDR ; 
 int /*<<< orphan*/  EMU_AC97DATA ; 
 int /*<<< orphan*/  M_FX0_FRONT_L ; 
 int /*<<< orphan*/  M_FX1_FRONT_R ; 
 int /*<<< orphan*/  M_MASTER_FRONT_L ; 
 int /*<<< orphan*/  M_MASTER_FRONT_R ; 
 int /*<<< orphan*/  M_MASTER_REC_L ; 
 int /*<<< orphan*/  M_MASTER_REC_R ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct emu_pcm_info *sc, int regno, uint32_t data)
{
	int write_ac97;
	int left, right;
	uint32_t emu_left, emu_right;
	int is_mute;

	write_ac97 = 1;

	left = FUNC0(data);
	emu_left = FUNC4(left);	/* We show us as 6-bit AC97 mixer */
	right = FUNC2(data);
	emu_right = FUNC4(right);
	is_mute = FUNC1(data);
	if (is_mute)
		emu_left = emu_right = 0;

	switch (regno) {
		/* TODO: reset emulator on AC97_RESET */
	case AC97_MIX_MASTER:
		FUNC6(sc->card, M_MASTER_FRONT_L, emu_left);
		FUNC6(sc->card, M_MASTER_FRONT_R, emu_right);
		sc->ac97_state[AC97_MIX_MASTER] = data & (0x8000 | 0x3f3f);
		data = 0x8000;	/* Mute AC97 main out */
		break;
	case AC97_MIX_PCM:	/* PCM OUT VOL */
		FUNC6(sc->card, M_FX0_FRONT_L, emu_left);
		FUNC6(sc->card, M_FX1_FRONT_R, emu_right);
		sc->ac97_state[AC97_MIX_PCM] = data & (0x8000 | 0x3f3f);
		data = 0x8000;	/* Mute AC97 PCM out */
		break;
	case AC97_REG_RECSEL:
		/*
		 * PCM recording source is set to "stereo mix" (labeled "vol"
		 * in mixer). There is no 'playback' from AC97 codec -
		 * if you want to hear anything from AC97 you have to _record_
		 * it. Keep things simple and record "stereo mix".
		 */
		data = 0x0505;
		break;
	case AC97_MIX_RGAIN:	/* RECORD GAIN */
		emu_left = FUNC3(left);	/* rgain is 4-bit */
		emu_right = FUNC3(right);
		FUNC6(sc->card, M_MASTER_REC_L, 100-emu_left);
		FUNC6(sc->card, M_MASTER_REC_R, 100-emu_right);
		/*
		 * Record gain on AC97 should stay zero to get AC97 sound on
		 * AC97_[RL] connectors on EMU10K2 chip. AC97 on Audigy is not
		 * directly connected to any output, only to EMU10K2 chip Use
		 * this control to set AC97 mix volume inside EMU10K2 chip
		 */
		sc->ac97_state[AC97_MIX_RGAIN] = data & (0x8000 | 0x0f0f);
		data = 0x0000;
		break;
	}
	if (write_ac97) {
		FUNC5(sc->card, EMU_AC97ADDR, regno, 1);
		FUNC5(sc->card, EMU_AC97DATA, data, 2);
	}
}