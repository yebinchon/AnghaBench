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
typedef  unsigned int u_int8_t ;
typedef  unsigned int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct sc_info {int dummy; } ;
struct TYPE_2__ {int bits; scalar_t__ rreg; unsigned int oselect; scalar_t__ stereo; } ;

/* Variables and functions */
 scalar_t__ CMPCI_NON_SB16_CONTROL ; 
 int /*<<< orphan*/  CMPCI_REG_AUX_MIC ; 
 int CMPCI_SB16_MIXER_OUTMIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,unsigned int,int) ; 
 unsigned int FUNC4 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int,unsigned int) ; 
 TYPE_1__* cmt ; 
 struct sc_info* FUNC6 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC8(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
	struct sc_info *sc = FUNC6(m);
	u_int32_t r, l, max;
	u_int8_t  v;

	max = (1 << cmt[dev].bits) - 1;

	if (cmt[dev].rreg == CMPCI_NON_SB16_CONTROL) {
		/* For time being this can only be one thing (mic in
		 * mic/aux reg) */
		v = FUNC2(sc, CMPCI_REG_AUX_MIC, 1) & 0xf0;
		l = left * max / 100;
		/* 3 bit gain with LSB MICGAIN off(1),on(1) -> 4 bit value */
		v |= ((l << 1) | (~l >> 3)) & 0x0f;
		FUNC3(sc, CMPCI_REG_AUX_MIC, v, 1);
		return 0;
	}

	l  = (left * max / 100) << (8 - cmt[dev].bits);
	if (cmt[dev].stereo) {
		r = (right * max / 100) << (8 - cmt[dev].bits);
		FUNC5(sc, FUNC1(cmt[dev].rreg), l);
		FUNC5(sc, cmt[dev].rreg, r);
		FUNC0(FUNC7("Mixer stereo write dev %d reg 0x%02x "\
			      "value 0x%02x:0x%02x\n",
			      dev, FUNC1(cmt[dev].rreg), l, r));
	} else {
		r = l;
		FUNC5(sc, cmt[dev].rreg, l);
		FUNC0(FUNC7("Mixer mono write dev %d reg 0x%02x " \
			      "value 0x%02x:0x%02x\n",
			      dev, cmt[dev].rreg, l, l));
	}

	/* Zero gain does not mute channel from output, but this does... */
	v = FUNC4(sc, CMPCI_SB16_MIXER_OUTMIX);
	if (l == 0 && r == 0) {
		v &= ~cmt[dev].oselect;
	} else {
		v |= cmt[dev].oselect;
	}
	FUNC5(sc,  CMPCI_SB16_MIXER_OUTMIX, v);

	return 0;
}