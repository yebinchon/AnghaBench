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
struct atiixp_info {int dummy; } ;
struct atiixp_chinfo {scalar_t__ dir; int fmt; struct atiixp_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int AFMT_32BIT ; 
 int /*<<< orphan*/  ATI_REG_6CH_REORDER ; 
 int ATI_REG_6CH_REORDER_EN ; 
 int /*<<< orphan*/  ATI_REG_CMD ; 
 int ATI_REG_CMD_INTERLEAVE_IN ; 
 int ATI_REG_CMD_INTERLEAVE_OUT ; 
 int /*<<< orphan*/  ATI_REG_OUT_DMA_SLOT ; 
 int FUNC0 (int) ; 
 int ATI_REG_OUT_DMA_SLOT_MASK ; 
 int ATI_REG_OUT_DMA_THRESHOLD_SHIFT ; 
 scalar_t__ PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_info*) ; 
 int FUNC2 (struct atiixp_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct atiixp_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(kobj_t obj, void *data, uint32_t format)
{
	struct atiixp_chinfo *ch = data;
	struct atiixp_info *sc = ch->parent;
	uint32_t value;

	FUNC1(sc);
	if (ch->dir == PCMDIR_REC) {
		value = FUNC2(sc, ATI_REG_CMD);
		value &= ~ATI_REG_CMD_INTERLEAVE_IN;
		if ((format & AFMT_32BIT) == 0)
			value |= ATI_REG_CMD_INTERLEAVE_IN;
		FUNC4(sc, ATI_REG_CMD, value);
	} else {
		value = FUNC2(sc, ATI_REG_OUT_DMA_SLOT);
		value &= ~ATI_REG_OUT_DMA_SLOT_MASK;
		/* We do not have support for more than 2 channels, _yet_. */
		value |= FUNC0(3) |
		    FUNC0(4);
		value |= 0x04 << ATI_REG_OUT_DMA_THRESHOLD_SHIFT;
		FUNC4(sc, ATI_REG_OUT_DMA_SLOT, value);
		value = FUNC2(sc, ATI_REG_CMD);
		value &= ~ATI_REG_CMD_INTERLEAVE_OUT;
		if ((format & AFMT_32BIT) == 0)
			value |= ATI_REG_CMD_INTERLEAVE_OUT;
		FUNC4(sc, ATI_REG_CMD, value);
		value = FUNC2(sc, ATI_REG_6CH_REORDER);
		value &= ~ATI_REG_6CH_REORDER_EN;
		FUNC4(sc, ATI_REG_6CH_REORDER, value);
	}
	ch->fmt = format;
	FUNC3(sc);

	return (0);
}