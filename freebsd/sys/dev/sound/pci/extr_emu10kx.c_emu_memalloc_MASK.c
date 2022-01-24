#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct emu_memblk {int buf_addr; int pte_start; int pte_size; char* owner; void* buf; int /*<<< orphan*/  buf_map; } ;
struct emu_mem {int* bmap; int* ptb_pages; int /*<<< orphan*/  blocks; TYPE_1__* card; } ;
typedef  int bus_addr_t ;
struct TYPE_2__ {int dbg_level; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EMUPAGESIZE ; 
 int EMU_MAXPAGES ; 
 int EMU_MAX_BUFSZ ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct emu_memblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct emu_memblk*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (struct emu_mem*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct emu_memblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct emu_memblk* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static void *
FUNC7(struct emu_mem *mem, uint32_t sz, bus_addr_t * addr, const char *owner)
{
	uint32_t blksz, start, idx, ofs, tmp, found;
	struct emu_memblk *blk;
	void *membuf;

	blksz = sz / EMUPAGESIZE;
	if (sz > (blksz * EMUPAGESIZE))
		blksz++;
	if (blksz > EMU_MAX_BUFSZ / EMUPAGESIZE) {
		if (mem->card->dbg_level > 2)
			FUNC2(mem->card->dev, "emu_memalloc: memory request tool large\n");
		return (NULL);
		}
	/* find a free block in the bitmap */
	found = 0;
	start = 1;
	while (!found && start + blksz < EMU_MAXPAGES) {
		found = 1;
		for (idx = start; idx < start + blksz; idx++)
			if (mem->bmap[idx >> 3] & (1 << (idx & 7)))
				found = 0;
		if (!found)
			start++;
	}
	if (!found) {
		if (mem->card->dbg_level > 2)
			FUNC2(mem->card->dev, "emu_memalloc: no free space in bitmap\n");
		return (NULL);
		}
	blk = FUNC5(sizeof(*blk), M_DEVBUF, M_NOWAIT);
	if (blk == NULL) {
		if (mem->card->dbg_level > 2)
			FUNC2(mem->card->dev, "emu_memalloc: buffer allocation failed\n");
		return (NULL);
		}
	FUNC1(blk, sizeof(*blk));
	membuf = FUNC3(mem, sz, &blk->buf_addr, &blk->buf_map);
	*addr = blk->buf_addr;
	if (membuf == NULL) {
		if (mem->card->dbg_level > 2)
			FUNC2(mem->card->dev, "emu_memalloc: can't setup HW memory\n");
		FUNC4(blk, M_DEVBUF);
		return (NULL);
	}
	blk->buf = membuf;
	blk->pte_start = start;
	blk->pte_size = blksz;
	FUNC6(blk->owner, owner, 15);
	blk->owner[15] = '\0';
	ofs = 0;
	for (idx = start; idx < start + blksz; idx++) {
		mem->bmap[idx >> 3] |= 1 << (idx & 7);
		tmp = (uint32_t) (blk->buf_addr + ofs);
		mem->ptb_pages[idx] = (tmp << 1) | idx;
		ofs += EMUPAGESIZE;
	}
	FUNC0(&mem->blocks, blk, link);
	return (membuf);
}