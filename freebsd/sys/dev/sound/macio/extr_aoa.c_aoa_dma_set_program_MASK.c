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
typedef  scalar_t__ u_int32_t ;
struct aoa_dma {int bufsz; int slots; int blksz; int /*<<< orphan*/  channel; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  DBDMA_ALWAYS ; 
 int /*<<< orphan*/  DBDMA_COND_TRUE ; 
 int /*<<< orphan*/  DBDMA_NEVER ; 
 int /*<<< orphan*/  DBDMA_OUTPUT_MORE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct aoa_dma *dma)
{
	u_int32_t 		 addr;
	int 			 i;

	addr = (u_int32_t) FUNC7(dma->buf);
	FUNC0(dma->bufsz == FUNC8(dma->buf), ("bad size"));

	dma->slots = dma->bufsz / dma->blksz;

	for (i = 0; i < dma->slots; ++i) {
		FUNC2(dma->channel, 
		    i, /* slot */
		    DBDMA_OUTPUT_MORE, /* command */
		    0, /* stream */
		    addr, /* data */
		    dma->blksz, /* count */
		    DBDMA_ALWAYS, /* interrupt */
		    DBDMA_COND_TRUE, /* branch */
		    DBDMA_NEVER, /* wait */
		    dma->slots + 1 /* branch_slot */
		);

		addr += dma->blksz;
	}

	/* Branch back to beginning. */
	FUNC1(dma->channel, dma->slots, 0);

	/* STOP command to branch when S0 is asserted. */
	FUNC3(dma->channel, dma->slots + 1);

	/* Set S0 as the condition to branch to STOP. */
	FUNC4(dma->channel, 1 << 0, 1 << 0);
	FUNC5(dma->channel, 1 << 0, 0);

	FUNC6(dma->channel, BUS_DMASYNC_PREWRITE);
}