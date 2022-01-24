#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int u_int16_t ;
typedef  int u_int ;
struct agg_chinfo {int speed; int phys; int base; int buflen; int num; TYPE_1__* parent; scalar_t__ qs16; scalar_t__ stereo; scalar_t__ us; } ;
typedef  int bus_addr_t ;
struct TYPE_10__ {int active; } ;

/* Variables and functions */
 int /*<<< orphan*/  APUREG_APUTYPE ; 
 int APUTYPE_16BITLINEAR ; 
 int APUTYPE_16BITSTEREO ; 
 int APUTYPE_8BITLINEAR ; 
 int APUTYPE_8BITSTEREO ; 
 int APU_APUTYPE_SHIFT ; 
 int APU_DMA_ENABLED ; 
 int PAN_FRONT ; 
 int PAN_RIGHT ; 
 int WAVCACHE_BASEADDR_SHIFT ; 
 int WAVCACHE_CHCTL_ADDRTAG_MASK ; 
 int WAVCACHE_CHCTL_STEREO ; 
 int WAVCACHE_CHCTL_U8 ; 
 scalar_t__ WAVCACHE_WTBAR ; 
 int WPWA_STEREO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  powerstate_active ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC12(struct agg_chinfo *ch)
{
	bus_addr_t	wpwa;
	u_int32_t	speed;
	u_int16_t	size, apuch, wtbar, wcreg, aputype;
	u_int		dv;
	int		pan;

	speed = ch->speed;
	wpwa = (ch->phys - ch->base) >> 1;
	wtbar = 0xc & (wpwa >> FUNC0(2));
	wcreg = (ch->phys - 16) & WAVCACHE_CHCTL_ADDRTAG_MASK;
	size  = ch->buflen;
	apuch = (ch->num << 1) | 32;
	pan = PAN_RIGHT - PAN_FRONT;

	if (ch->stereo) {
		wcreg |= WAVCACHE_CHCTL_STEREO;
		if (ch->qs16) {
			aputype = APUTYPE_16BITSTEREO;
			wpwa >>= 1;
			size >>= 1;
			pan = -pan;
		} else
			aputype = APUTYPE_8BITSTEREO;
	} else {
		pan = 0;
		if (ch->qs16)
			aputype = APUTYPE_16BITLINEAR;
		else {
			aputype = APUTYPE_8BITLINEAR;
			speed >>= 1;
		}
	}
	if (ch->us)
		wcreg |= WAVCACHE_CHCTL_U8;

	if (wtbar > 8)
		wtbar = (wtbar >> 1) + 4;

	dv = (((speed % 48000) << 16) + 24000) / 48000
	    + ((speed / 48000) << 16);

	FUNC1(ch->parent);
	FUNC2(ch->parent, powerstate_active);

	FUNC9(ch->parent, WAVCACHE_WTBAR + wtbar,
	    ch->base >> WAVCACHE_BASEADDR_SHIFT);
	FUNC9(ch->parent, WAVCACHE_WTBAR + wtbar + 1,
	    ch->base >> WAVCACHE_BASEADDR_SHIFT);
	if (wtbar < 8) {
		FUNC9(ch->parent, WAVCACHE_WTBAR + wtbar + 2,
		    ch->base >> WAVCACHE_BASEADDR_SHIFT);
		FUNC9(ch->parent, WAVCACHE_WTBAR + wtbar + 3,
		    ch->base >> WAVCACHE_BASEADDR_SHIFT);
	}
	FUNC8(ch->parent, apuch, wcreg);
	FUNC8(ch->parent, apuch + 1, wcreg);

	FUNC4(ch->parent, apuch, wpwa, size, pan, dv);
	if (ch->stereo) {
		if (ch->qs16)
			wpwa |= (WPWA_STEREO >> 1);
		FUNC4(ch->parent, apuch + 1, wpwa, size, -pan, dv);

		FUNC5();
		FUNC11(ch->parent, apuch, APUREG_APUTYPE,
		    (aputype << APU_APUTYPE_SHIFT) | APU_DMA_ENABLED | 0xf);
		FUNC11(ch->parent, apuch + 1, APUREG_APUTYPE,
		    (aputype << APU_APUTYPE_SHIFT) | APU_DMA_ENABLED | 0xf);
		FUNC6();
	} else {
		FUNC11(ch->parent, apuch, APUREG_APUTYPE,
		    (aputype << APU_APUTYPE_SHIFT) | APU_DMA_ENABLED | 0xf);
	}

	/* to mark that this channel is ready for intr. */
	ch->parent->active |= (1 << ch->num);

	FUNC7(ch->parent);
	FUNC10(ch->parent);
	FUNC3(ch->parent);
}