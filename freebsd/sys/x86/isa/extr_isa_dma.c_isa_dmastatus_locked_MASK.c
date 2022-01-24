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
typedef  int u_long ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DMA1_FFC ; 
 int FUNC1 (int) ; 
 int DMA2_FFC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int dma_auto_mode ; 
 int dma_busy ; 
 int dma_inuse ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  isa_dma_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int
FUNC8(int chan)
{
	u_long	cnt = 0;
	int	ffport, waport;
	u_long	low1, high1, low2, high2;

	FUNC5(&isa_dma_lock, MA_OWNED);

	/* channel active? */
	if ((dma_inuse & (1 << chan)) == 0) {
		FUNC7("isa_dmastatus: channel %d not active\n", chan);
		return(-1);
	}
	/* channel busy? */

	if (((dma_busy & (1 << chan)) == 0) &&
	    (dma_auto_mode & (1 << chan)) == 0 ) {
	    FUNC7("chan %d not busy\n", chan);
	    return -2 ;
	}	
	if (chan < 4) {			/* low DMA controller */
		ffport = DMA1_FFC;
		waport = FUNC0(chan) + 1;
	} else {			/* high DMA controller */
		ffport = DMA2_FFC;
		waport = FUNC1(chan - 4) + 2;
	}

	FUNC2();			/* no interrupts Mr Jones! */
	FUNC6(ffport, 0);		/* clear register LSB flipflop */
	low1 = FUNC4(waport);
	high1 = FUNC4(waport);
	FUNC6(ffport, 0);		/* clear again */
	low2 = FUNC4(waport);
	high2 = FUNC4(waport);
	FUNC3();			/* enable interrupts again */

	/* 
	 * Now decide if a wrap has tried to skew our results.
	 * Note that after TC, the count will read 0xffff, while we want 
	 * to return zero, so we add and then mask to compensate.
	 */
	if (low1 >= low2) {
		cnt = (low1 + (high1 << 8) + 1) & 0xffff;
	} else {
		cnt = (low2 + (high2 << 8) + 1) & 0xffff;
	}

	if (chan >= 4)			/* high channels move words */
		cnt *= 2;
	return(cnt);
}