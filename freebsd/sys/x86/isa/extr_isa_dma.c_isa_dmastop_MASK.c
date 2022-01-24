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
 int /*<<< orphan*/  DMA1_SMSK ; 
 int /*<<< orphan*/  DMA2_SMSK ; 
 int dma_auto_mode ; 
 int dma_busy ; 
 int dma_inuse ; 
 int /*<<< orphan*/  isa_dma_lock ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int
FUNC5(int chan) 
{
	int status;

	FUNC1(&isa_dma_lock);
	if ((dma_inuse & (1 << chan)) == 0)
		FUNC4("isa_dmastop: channel %d not acquired\n", chan);  

	if (((dma_busy & (1 << chan)) == 0) &&
	    ((dma_auto_mode & (1 << chan)) == 0)) {
		FUNC4("chan %d not busy\n", chan);
		FUNC2(&isa_dma_lock);
		return -2 ;
	}
    
	if ((chan & 4) == 0) {
		FUNC3(DMA1_SMSK, (chan & 3) | 4 /* disable mask */);
	} else {
		FUNC3(DMA2_SMSK, (chan & 3) | 4 /* disable mask */);
	}

	status = FUNC0(chan);

	FUNC2(&isa_dma_lock);

	return (status);
}