#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int16_t ;
typedef  int u_int ;
struct agg_rchinfo {int speed; int stereo; int srcphys; int base; int phys; int buflen; TYPE_1__* parent; scalar_t__ hwptr; } ;
typedef  int bus_addr_t ;
struct TYPE_9__ {int bufsz; int active; int playchns; } ;

/* Variables and functions */
 int /*<<< orphan*/  APUREG_AMPLITUDE ; 
 int /*<<< orphan*/  APUREG_APUTYPE ; 
 int /*<<< orphan*/  APUREG_EFFECT_GAIN ; 
 int /*<<< orphan*/  APUREG_ROUTING ; 
 int APUTYPE_INPUTMIXER ; 
 int APUTYPE_RATECONV ; 
 int APU_APUTYPE_SHIFT ; 
 int APU_DATASRC_A_SHIFT ; 
 int APU_DMA_ENABLED ; 
 int PAN_FRONT ; 
 int PAN_LEFT ; 
 int WAVCACHE_CHCTL_ADDRTAG_MASK ; 
 int WAVCACHE_CHCTL_STEREO ; 
 int WPWA_USE_SYSMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  powerstate_active ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(struct agg_rchinfo *ch)
{
	bus_addr_t	wpwa, wpwa2;
	u_int16_t	wcreg, wcreg2;
	u_int	dv;
	int	pan;

	/* speed > 48000 not cared */
	dv = ((ch->speed << 16) + 24000) / 48000;

	/* RATECONV doesn't seem to like dv == 0x10000. */
	if (dv == 0x10000)
		dv--;

	if (ch->stereo) {
		wpwa = (ch->srcphys - ch->base) >> 1;
		wpwa2 = (ch->srcphys + ch->parent->bufsz/2 - ch->base) >> 1;
		wcreg = (ch->srcphys - 16) & WAVCACHE_CHCTL_ADDRTAG_MASK;
		wcreg2 = (ch->base - 16) & WAVCACHE_CHCTL_ADDRTAG_MASK;
		pan = PAN_LEFT - PAN_FRONT;
	} else {
		wpwa = (ch->phys - ch->base) >> 1;
		wpwa2 = (ch->srcphys - ch->base) >> 1;
		wcreg = (ch->phys - 16) & WAVCACHE_CHCTL_ADDRTAG_MASK;
		wcreg2 = (ch->base - 16) & WAVCACHE_CHCTL_ADDRTAG_MASK;
		pan = 0;
	}

	FUNC0(ch->parent);

	ch->hwptr = 0;
	FUNC1(ch->parent, powerstate_active);

	/* Invalidate WaveCache. */
	FUNC7(ch->parent, 0, wcreg | WAVCACHE_CHCTL_STEREO);
	FUNC7(ch->parent, 1, wcreg | WAVCACHE_CHCTL_STEREO);
	FUNC7(ch->parent, 2, wcreg2 | WAVCACHE_CHCTL_STEREO);
	FUNC7(ch->parent, 3, wcreg2 | WAVCACHE_CHCTL_STEREO);

	/* Load APU registers. */
	/* APU #0 : Sample rate converter for left/center. */
	FUNC3(ch->parent, 0, WPWA_USE_SYSMEM | wpwa,
		     ch->buflen >> ch->stereo, 0, dv);
	FUNC9(ch->parent, 0, APUREG_AMPLITUDE, 0);
	FUNC9(ch->parent, 0, APUREG_ROUTING, 2 << APU_DATASRC_A_SHIFT);

	/* APU #1 : Sample rate converter for right. */
	FUNC3(ch->parent, 1, WPWA_USE_SYSMEM | wpwa2,
		     ch->buflen >> ch->stereo, 0, dv);
	FUNC9(ch->parent, 1, APUREG_AMPLITUDE, 0);
	FUNC9(ch->parent, 1, APUREG_ROUTING, 3 << APU_DATASRC_A_SHIFT);

	/* APU #2 : Input mixer for left. */
	FUNC3(ch->parent, 2, WPWA_USE_SYSMEM | 0,
		     ch->parent->bufsz >> 2, pan, 0x10000);
	FUNC9(ch->parent, 2, APUREG_AMPLITUDE, 0);
	FUNC9(ch->parent, 2, APUREG_EFFECT_GAIN, 0xf0);
	FUNC9(ch->parent, 2, APUREG_ROUTING, 0x15 << APU_DATASRC_A_SHIFT);

	/* APU #3 : Input mixer for right. */
	FUNC3(ch->parent, 3, WPWA_USE_SYSMEM | (ch->parent->bufsz >> 2),
		     ch->parent->bufsz >> 2, -pan, 0x10000);
	FUNC9(ch->parent, 3, APUREG_AMPLITUDE, 0);
	FUNC9(ch->parent, 3, APUREG_EFFECT_GAIN, 0xf0);
	FUNC9(ch->parent, 3, APUREG_ROUTING, 0x14 << APU_DATASRC_A_SHIFT);

	/* to mark this channel ready for intr. */
	ch->parent->active |= (1 << ch->parent->playchns);

	/* start adc */
	FUNC4();
	FUNC9(ch->parent, 0, APUREG_APUTYPE,
	    (APUTYPE_RATECONV << APU_APUTYPE_SHIFT) | APU_DMA_ENABLED | 0xf);
	FUNC9(ch->parent, 1, APUREG_APUTYPE,
	    (APUTYPE_RATECONV << APU_APUTYPE_SHIFT) | APU_DMA_ENABLED | 0xf);
	FUNC9(ch->parent, 2, APUREG_APUTYPE,
	    (APUTYPE_INPUTMIXER << APU_APUTYPE_SHIFT) | 0xf);
	FUNC9(ch->parent, 3, APUREG_APUTYPE,
	    (APUTYPE_INPUTMIXER << APU_APUTYPE_SHIFT) | 0xf);
	FUNC5();

	FUNC6(ch->parent);
	FUNC8(ch->parent);
	FUNC2(ch->parent);
}