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

/* Variables and functions */
 int AFMT_16BIT ; 
 int /*<<< orphan*/  ALS_FIFO1_CONTROL ; 
 int /*<<< orphan*/  ALS_FIFO1_LENGTH_HI ; 
 int /*<<< orphan*/  ALS_FIFO1_LENGTH_LO ; 
 int ALS_FIFO1_RUN ; 
 int /*<<< orphan*/  ALS_GCR_FIFO1_COUNT ; 
 int /*<<< orphan*/  ALS_GCR_FIFO1_START ; 
 int /*<<< orphan*/  DSP_CMD_SPKON ; 
 int /*<<< orphan*/  FUNC0 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_chinfo*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct sc_chinfo *ch)
{
	struct	sc_info *sc = ch->parent;
	u_int32_t	buf, bufsz, count, dma_prog;

	buf = FUNC5(ch->buffer);
	bufsz = FUNC6(ch->buffer);
	count = bufsz / 2;
	if (ch->format & AFMT_16BIT)
		count /= 2;
	count--;

	FUNC0(sc, DSP_CMD_SPKON);
	FUNC4(ch);

	FUNC1(sc, ALS_GCR_FIFO1_START, buf);
	FUNC1(sc, ALS_GCR_FIFO1_COUNT, (bufsz - 1));

	FUNC3(sc, ALS_FIFO1_LENGTH_LO, count & 0xff);
	FUNC3(sc, ALS_FIFO1_LENGTH_HI, count >> 8);

	dma_prog = ALS_FIFO1_RUN | FUNC2(sc, ch->format);
	FUNC3(sc, ALS_FIFO1_CONTROL, dma_prog);

	ch->dma_active = 1;
}