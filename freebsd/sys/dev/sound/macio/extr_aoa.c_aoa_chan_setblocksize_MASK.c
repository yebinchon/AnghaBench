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
struct aoa_dma {int blksz; int bufsz; int /*<<< orphan*/  channel; int /*<<< orphan*/  buf; int /*<<< orphan*/  running; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct aoa_dma*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u_int32_t
FUNC5(kobj_t obj, void *data, u_int32_t blocksz)
{
	struct aoa_dma 		*dma = data;
	int 			 err, lz;

	FUNC0(("aoa_chan_setblocksize: blocksz = %u, dma->blksz = %u\n", 
		blocksz, dma->blksz));
	FUNC1(!dma->running, ("dma is running"));
	FUNC1(blocksz > 0, ("bad blocksz"));

	/* Round blocksz down to a power of two... */
	__asm volatile ("cntlzw %0,%1" : "=r"(lz) : "r"(blocksz));
	blocksz = 1 << (31 - lz);
	FUNC0(("blocksz = %u\n", blocksz));

	/* ...but no more than the buffer. */
	if (blocksz > dma->bufsz)
		blocksz = dma->bufsz;

	err = FUNC4(dma->buf, dma->bufsz / blocksz, blocksz);
	if (err != 0) {
		FUNC0(("sndbuf_resize returned %d\n", err));
		return (0);
	}

	if (blocksz == dma->blksz)
		return (dma->blksz);

	/* One slot per block plus branch to 0 plus STOP. */
	err = FUNC3(dma->channel, 2 + dma->bufsz / blocksz);
	if (err != 0) {
		FUNC0(("dbdma_resize_channel returned %d\n", err));
		return (0);
	}

	/* Set the new blocksize. */
	dma->blksz = blocksz;
	FUNC2(dma);

	return (dma->blksz);
}