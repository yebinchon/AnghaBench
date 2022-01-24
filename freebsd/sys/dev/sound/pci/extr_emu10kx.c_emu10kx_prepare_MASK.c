#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sbuf {int dummy; } ;
struct emu_sc_info {scalar_t__ mode; scalar_t__ enable_ir; int /*<<< orphan*/ ** midi; int /*<<< orphan*/ ** pcm; scalar_t__ broken_digital; scalar_t__ is_ca0108; scalar_t__ is_ca0102; scalar_t__ is_emu10k2; scalar_t__ is_emu10k1; scalar_t__ has_71; scalar_t__ has_51; scalar_t__ has_ac97; int /*<<< orphan*/  code_size; int /*<<< orphan*/  routing_code_end; TYPE_1__* rm; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_gprs; int /*<<< orphan*/  num_used; } ;

/* Variables and functions */
 scalar_t__ MODE_ANALOG ; 
 int RT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int FUNC4 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,char*,...) ; 

__attribute__((used)) static int
FUNC6(struct emu_sc_info *sc, struct sbuf *s)
{
	int i;

	FUNC5(s, "FreeBSD EMU10Kx Audio Driver\n");
	FUNC5(s, "\nHardware resource usage:\n");
	FUNC5(s, "DSP General Purpose Registers: %d used, %d total\n", sc->rm->num_used, sc->rm->num_gprs);
	FUNC5(s, "DSP Instruction Registers: %d used, %d total\n", sc->routing_code_end, sc->code_size);
	FUNC5(s, "Card supports");
	if (sc->has_ac97) {
		FUNC5(s, " AC97 codec");
	} else {
		FUNC5(s, " NO AC97 codec");
	}
	if (sc->has_51) {
		if (sc->has_71)
			FUNC5(s, " and 7.1 output");
		else
			FUNC5(s, " and 5.1 output");
	}
	if (sc->is_emu10k1)
		FUNC5(s, ", SBLive! DSP code");
	if (sc->is_emu10k2)
		FUNC5(s, ", Audigy DSP code");
	if (sc->is_ca0102)
		FUNC5(s, ", Audigy DSP code with Audigy2 hacks");
	if (sc->is_ca0108)
		FUNC5(s, ", Audigy DSP code with Audigy2Value hacks");
	FUNC5(s, "\n");
	if (sc->broken_digital)
		FUNC5(s, "Digital mode unsupported\n");
	FUNC5(s, "\nInstalled devices:\n");
	for (i = 0; i < RT_COUNT; i++)
		if (sc->pcm[i] != NULL)
			if (FUNC2(sc->pcm[i])) {
				FUNC5(s, "%s on %s\n", FUNC0(sc->pcm[i]), FUNC1(sc->pcm[i]));
			}
	if (sc->midi[0] != NULL)
		if (FUNC2(sc->midi[0])) {
			FUNC5(s, "EMU10Kx MIDI Interface\n");
			FUNC5(s, "\tOn-card connector on %s\n", FUNC1(sc->midi[0]));
		}
	if (sc->midi[1] != NULL)
		if (FUNC2(sc->midi[1])) {
			FUNC5(s, "\tOn-Drive connector on %s\n", FUNC1(sc->midi[1]));
		}
	if (sc->midi[0] != NULL)
		if (FUNC2(sc->midi[0])) {
			FUNC5(s, "\tIR receiver MIDI events %s\n", sc->enable_ir ? "enabled" : "disabled");
		}
	FUNC5(s, "Card is in %s mode\n", (sc->mode == MODE_ANALOG) ? "analog" : "digital");

	FUNC3(s);
	return (FUNC4(s));
}