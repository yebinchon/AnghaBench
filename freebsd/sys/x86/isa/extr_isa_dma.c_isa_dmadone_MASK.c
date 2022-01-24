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
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA1_SMSK ; 
 int /*<<< orphan*/  DMA2_SMSK ; 
 int ISADMA_READ ; 
 int VALID_DMA_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int dma_auto_mode ; 
 int /*<<< orphan*/ * dma_bouncebuf ; 
 int dma_bounced ; 
 int dma_busy ; 
 int dma_inuse ; 
 int /*<<< orphan*/  isa_dma_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void
FUNC6(int flags, caddr_t addr, int nbytes, int chan)
{  
#ifdef DIAGNOSTIC
	if (chan & ~VALID_DMA_MASK)
		panic("isa_dmadone: channel out of range");

	if ((dma_inuse & (1 << chan)) == 0)
		printf("isa_dmadone: channel %d not acquired\n", chan);
#endif

	FUNC1(&isa_dma_lock);
	if (((dma_busy & (1 << chan)) == 0) && 
	    (dma_auto_mode & (1 << chan)) == 0 )
		FUNC5("isa_dmadone: channel %d not busy\n", chan);

	if ((dma_auto_mode & (1 << chan)) == 0)
		FUNC3(chan & 4 ? DMA2_SMSK : DMA1_SMSK, (chan & 3) | 4);

	if (dma_bounced & (1 << chan)) {
		/* copy bounce buffer on read */
		if (flags & ISADMA_READ)
			FUNC0(dma_bouncebuf[chan], addr, nbytes);

		dma_bounced &= ~(1 << chan);
	}
	dma_busy &= ~(1 << chan);
	FUNC2(&isa_dma_lock);
}