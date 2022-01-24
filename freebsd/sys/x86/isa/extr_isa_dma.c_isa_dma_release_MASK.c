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

/* Variables and functions */
 int VALID_DMA_MASK ; 
 int dma_auto_mode ; 
 int dma_busy ; 
 int dma_inuse ; 
 int /*<<< orphan*/  isa_dma_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

void
FUNC4(int chan)
{
#ifdef DIAGNOSTIC
	if (chan & ~VALID_DMA_MASK)
		panic("isa_dma_release: channel out of range");

	mtx_lock(&isa_dma_lock);
	if ((dma_inuse & (1 << chan)) == 0)
		printf("isa_dma_release: channel %d not in use\n", chan);
#else
	FUNC0(&isa_dma_lock);
#endif

	if (dma_busy & (1 << chan)) {
		dma_busy &= ~(1 << chan);
		/* 
		 * XXX We should also do "dma_bounced &= (1 << chan);"
		 * because we are acting on behalf of isa_dmadone() which
		 * was not called to end the last DMA operation.  This does
		 * not matter now, but it may in the future.
		 */
	}

	dma_inuse &= ~(1 << chan);
	dma_auto_mode &= ~(1 << chan);

	FUNC1(&isa_dma_lock);
}