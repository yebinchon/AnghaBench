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
typedef  int u_int32_t ;
struct sc_info {int dummy; } ;
struct sc_chinfo {int format; int dma_active; int /*<<< orphan*/  buffer; struct sc_info* parent; } ;
struct playback_command {int dma_prog; int format_val; } ;

/* Variables and functions */
 int AFMT_16BIT ; 
 int /*<<< orphan*/  ALS_GCR_DMA0_MODE ; 
 int /*<<< orphan*/  ALS_GCR_DMA0_START ; 
 int DSP_CMD_SPKON ; 
 int DSP_F16_AUTO ; 
 int DSP_F16_DAC ; 
 int DSP_F16_FIFO_ON ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 struct playback_command* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_chinfo*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct sc_chinfo *ch)
{
	const struct playback_command *p;
	struct	sc_info *sc = ch->parent;
	u_int32_t	buf, bufsz, count, dma_prog;

	buf = FUNC4(ch->buffer);
	bufsz = FUNC5(ch->buffer);
	count = bufsz / 2;
	if (ch->format & AFMT_16BIT)
		count /= 2;
	count--;

	FUNC0(sc, DSP_CMD_SPKON);
	FUNC3(ch);

	FUNC1(sc, ALS_GCR_DMA0_START, buf);
	FUNC1(sc, ALS_GCR_DMA0_MODE, (bufsz - 1) | 0x180000);

	p = FUNC2(ch->format);
	dma_prog = p->dma_prog | DSP_F16_DAC | DSP_F16_AUTO | DSP_F16_FIFO_ON;

	FUNC0(sc, dma_prog);
	FUNC0(sc, p->format_val);
	FUNC0(sc, count & 0xff);
	FUNC0(sc, count >> 8);

	ch->dma_active = 1;
}