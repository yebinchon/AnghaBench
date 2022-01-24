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
struct via_info {int /*<<< orphan*/  lock; } ;
struct via_dma_op {int dummy; } ;
struct via_chinfo {scalar_t__ sgd_addr; scalar_t__ dir; int /*<<< orphan*/  buffer; int /*<<< orphan*/  count; int /*<<< orphan*/  base; struct via_dma_op* sgd_table; struct via_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCMDIR_REC ; 
 scalar_t__ SEGS_PER_CHAN ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct via_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u_int32_t
FUNC6(kobj_t obj, void *data)
{
	struct via_chinfo *ch = data;
	struct via_info *via = ch->parent;
	struct via_dma_op *ado;
	bus_addr_t sgd_addr = ch->sgd_addr;
	u_int32_t ptr, base, base1, len, seg;

	ado = ch->sgd_table;
	FUNC2(via->lock);
	base1 = FUNC5(via, ch->base, 4);
	len = FUNC5(via, ch->count, 4);
	base = FUNC5(via, ch->base, 4);
	if (base != base1) 	/* Avoid race hazard */
		len = FUNC5(via, ch->count, 4);
	FUNC3(via->lock);

	FUNC0(FUNC1("viachan_getptr: len / base = %x / %x\n", len, base));

	/* Base points to SGD segment to do, one past current */

	/* Determine how many segments have been done */
	seg = (base - sgd_addr) / sizeof(struct via_dma_op);
	if (seg == 0)
		seg = SEGS_PER_CHAN;

	/* Now work out offset: seg less count */
	ptr = (seg * FUNC4(ch->buffer) / SEGS_PER_CHAN) - len;
	if (ch->dir == PCMDIR_REC) {
		/* DMA appears to operate on memory 'lines' of 32 bytes	*/
		/* so don't return any part line - it isn't in RAM yet	*/
		ptr = ptr & ~0x1f;
	}

	FUNC0(FUNC1("return ptr=%u\n", ptr));
	return ptr;
}