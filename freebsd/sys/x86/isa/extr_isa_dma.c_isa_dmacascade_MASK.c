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
 int /*<<< orphan*/  DMA1_MODE ; 
 int /*<<< orphan*/  DMA1_SMSK ; 
 int /*<<< orphan*/  DMA2_MODE ; 
 int /*<<< orphan*/  DMA2_SMSK ; 
 int DMA37MD_CASCADE ; 
 int VALID_DMA_MASK ; 
 int /*<<< orphan*/  isa_dma_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(int chan)
{
#ifdef DIAGNOSTIC
	if (chan & ~VALID_DMA_MASK)
		panic("isa_dmacascade: channel out of range");
#endif

	FUNC0(&isa_dma_lock);
	/* set dma channel mode, and set dma channel mode */
	if ((chan & 4) == 0) {
		FUNC2(DMA1_MODE, DMA37MD_CASCADE | chan);
		FUNC2(DMA1_SMSK, chan);
	} else {
		FUNC2(DMA2_MODE, DMA37MD_CASCADE | (chan & 3));
		FUNC2(DMA2_SMSK, chan & 3);
	}
	FUNC1(&isa_dma_lock);
}