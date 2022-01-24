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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int VALID_DMA_MASK ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long,int,unsigned long,int) ; 
 int /*<<< orphan*/ ** dma_bouncebuf ; 
 int /*<<< orphan*/ * dma_bouncebufsize ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isa_dma_lock ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(int chan, u_int bouncebufsize, int flag)
{
	void *buf;
	int contig;

#ifdef DIAGNOSTIC
	if (chan & ~VALID_DMA_MASK)
		panic("isa_dma_init: channel out of range");
#endif


	/* Try malloc() first.  It works better if it works. */
	buf = FUNC4(bouncebufsize, M_DEVBUF, flag);
	if (buf != NULL) {
		if (FUNC3(buf, bouncebufsize, chan) != 0) {
			FUNC2(buf, M_DEVBUF);
			buf = NULL;
		}
		contig = 0;
	}

	if (buf == NULL) {
		buf = FUNC1(bouncebufsize, M_DEVBUF, flag, 0ul, 0xfffffful,
			   1ul, chan & 4 ? 0x20000ul : 0x10000ul);
		contig = 1;
	}

	if (buf == NULL)
		return (ENOMEM);

	FUNC5(&isa_dma_lock);
	/*
	 * If a DMA channel is shared, both drivers have to call isa_dma_init
	 * since they don't know that the other driver will do it.
	 * Just return if we're already set up good.
	 * XXX: this only works if they agree on the bouncebuf size.  This
	 * XXX: is typically the case since they are multiple instances of
	 * XXX: the same driver.
	 */
	if (dma_bouncebuf[chan] != NULL) {
		if (contig)
			FUNC0(buf, bouncebufsize, M_DEVBUF);
		else
			FUNC2(buf, M_DEVBUF);
		FUNC6(&isa_dma_lock);
		return (0);
	}

	dma_bouncebufsize[chan] = bouncebufsize;
	dma_bouncebuf[chan] = buf;

	FUNC6(&isa_dma_lock);

	return (0);
}