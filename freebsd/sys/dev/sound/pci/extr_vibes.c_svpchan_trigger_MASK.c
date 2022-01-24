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
typedef  int u_int8_t ;
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  dmaa_sh; int /*<<< orphan*/  dmaa_st; } ;
struct sc_chinfo {int spd; int dma_active; int /*<<< orphan*/  buffer; int /*<<< orphan*/  fmt; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SV_AFMT_DMAA_MSK ; 
 int SV_DMA_MODE_AUTO ; 
 int SV_DMA_MODE_WR ; 
 int SV_INTR_PER_BUFFER ; 
 int SV_PLAYBACK_PAUSE ; 
 int SV_PLAY_ENABLE ; 
 int /*<<< orphan*/  SV_REG_DMAA_COUNT_HI ; 
 int /*<<< orphan*/  SV_REG_DMAA_COUNT_LO ; 
 int /*<<< orphan*/  SV_REG_ENABLE ; 
 int /*<<< orphan*/  SV_REG_FORMAT ; 
 int /*<<< orphan*/  SV_REG_PCM_SAMPLING_HI ; 
 int /*<<< orphan*/  SV_REG_PCM_SAMPLING_LO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(kobj_t obj, void *data, int go)
{
	struct sc_chinfo	*ch = data;
	struct sc_info		*sc = ch->parent;
	u_int32_t		count, enable, speed;
	u_int8_t		v;

	switch(go) {
	case PCMTRIG_START:
		/* Set speed */
		speed = (ch->spd * 65536) / 48000;
		if (speed > 65535)
			speed = 65535;
		FUNC5(sc, SV_REG_PCM_SAMPLING_HI, speed >> 8);
		FUNC5(sc, SV_REG_PCM_SAMPLING_LO, speed & 0xff);

		/* Set format */
		v  = FUNC4(sc, SV_REG_FORMAT) & ~SV_AFMT_DMAA_MSK;
		v |= FUNC0(ch->fmt);
		FUNC5(sc, SV_REG_FORMAT, v);

		/* Program DMA */
		count = FUNC2(ch->buffer);
		FUNC3(sc->dmaa_st, sc->dmaa_sh,
				  FUNC1(ch->buffer),
				  count - 1,
				  SV_DMA_MODE_AUTO | SV_DMA_MODE_WR);
		count = count / SV_INTR_PER_BUFFER - 1;
		FUNC5(sc, SV_REG_DMAA_COUNT_HI, count >> 8);
		FUNC5(sc, SV_REG_DMAA_COUNT_LO, count & 0xff);

		/* Enable DMA */
		enable = FUNC4(sc, SV_REG_ENABLE);
		enable = (enable | SV_PLAY_ENABLE) & ~SV_PLAYBACK_PAUSE;
		FUNC5(sc, SV_REG_ENABLE, enable);
		ch->dma_active = 1;
		break;
	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		enable = FUNC4(sc, SV_REG_ENABLE) & ~SV_PLAY_ENABLE;
		FUNC5(sc, SV_REG_ENABLE, enable);
		ch->dma_active = 0;
		break;
	}

	return 0;
}