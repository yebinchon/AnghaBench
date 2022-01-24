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
struct aoa_dma {int running; int slots; int /*<<< orphan*/  mutex; int /*<<< orphan*/  channel; int /*<<< orphan*/  slot; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PCMTRIG_ABORT 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(kobj_t obj, void *data, int go)
{
	struct aoa_dma 	*dma = data;
	int 		 i;

	switch (go) {
	case PCMTRIG_START:

		/* Start the DMA. */
		dma->running = 1;
		
		dma->slot = 0;
		FUNC3(dma->channel, dma->slot);

		FUNC2(dma->channel);

		return (0);

	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		
		FUNC6(&dma->mutex);

		dma->running = 0;

		/* Make it branch to the STOP command. */
		FUNC4(dma->channel, 1 << 0, 1 << 0);

		/* XXX should wait for DBDMA_ACTIVE to clear. */
		FUNC0(40000);

		/* Reset the DMA. */
		FUNC5(dma->channel);
		FUNC4(dma->channel, 1 << 0, 0);

		for (i = 0; i < dma->slots; ++i)
			FUNC1(dma->channel, i);

		FUNC7(&dma->mutex);

		return (0);
	}

	return (0);
}