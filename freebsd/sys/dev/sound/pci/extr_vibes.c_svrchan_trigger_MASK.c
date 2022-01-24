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
struct sc_info {int /*<<< orphan*/  dmac_sh; int /*<<< orphan*/  dmac_st; } ;
struct sc_chinfo {int dma_active; int /*<<< orphan*/  buffer; int /*<<< orphan*/  fmt; int /*<<< orphan*/  spd; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SV_AFMT_DMAC_MSK ; 
 int SV_DMA_MODE_AUTO ; 
 int SV_DMA_MODE_RD ; 
 int SV_INTR_PER_BUFFER ; 
 int SV_RECORD_ENABLE ; 
 int /*<<< orphan*/  SV_REG_DMAC_COUNT_HI ; 
 int /*<<< orphan*/  SV_REG_DMAC_COUNT_LO ; 
 int /*<<< orphan*/  SV_REG_ENABLE ; 
 int /*<<< orphan*/  SV_REG_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sc_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(kobj_t obj, void *data, int go)
{
	struct sc_chinfo	*ch = data;
	struct sc_info 		*sc = ch->parent;
	u_int32_t		count, enable;
	u_int8_t		v;

	switch(go) {
	case PCMTRIG_START:
		/* Set speed */
		FUNC6(sc, ch->spd);

		/* Set format */
		v  = FUNC4(sc, SV_REG_FORMAT) & ~SV_AFMT_DMAC_MSK;
		v |= FUNC0(ch->fmt);
		FUNC5(sc, SV_REG_FORMAT, v);

		/* Program DMA */
		count = FUNC2(ch->buffer) / 2; /* DMAC uses words */
		FUNC3(sc->dmac_st, sc->dmac_sh,
				  FUNC1(ch->buffer),
				  count - 1,
				  SV_DMA_MODE_AUTO | SV_DMA_MODE_RD);
		count = count / SV_INTR_PER_BUFFER - 1;
		FUNC5(sc, SV_REG_DMAC_COUNT_HI, count >> 8);
		FUNC5(sc, SV_REG_DMAC_COUNT_LO, count & 0xff);

		/* Enable DMA */
		enable = FUNC4(sc, SV_REG_ENABLE) | SV_RECORD_ENABLE;
		FUNC5(sc, SV_REG_ENABLE, enable);
		ch->dma_active = 1;
		break;
	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		enable = FUNC4(sc, SV_REG_ENABLE) & ~SV_RECORD_ENABLE;
		FUNC5(sc, SV_REG_ENABLE, enable);
		ch->dma_active = 0;
		break;
	}

	return 0;
}