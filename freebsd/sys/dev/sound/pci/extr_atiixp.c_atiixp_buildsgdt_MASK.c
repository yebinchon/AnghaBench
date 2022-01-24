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
struct atiixp_info {scalar_t__ polling; } ;
struct atiixp_dma_op {int dummy; } ;
struct atiixp_chinfo {int blksz; int blkcnt; scalar_t__ sgd_addr; TYPE_1__* sgd_table; int /*<<< orphan*/  buffer; struct atiixp_info* parent; } ;
struct TYPE_2__ {void* next; void* size; void* status; void* addr; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct atiixp_chinfo *ch)
{
	struct atiixp_info *sc = ch->parent;
	uint32_t addr, blksz, blkcnt;
	int i;

	addr = FUNC2(ch->buffer);

	if (sc->polling != 0) {
		blksz = ch->blksz * ch->blkcnt;
		blkcnt = 1;
	} else {
		blksz = ch->blksz;
		blkcnt = ch->blkcnt;
	}

	for (i = 0; i < blkcnt; i++) {
		ch->sgd_table[i].addr = FUNC1(addr + (i * blksz));
		ch->sgd_table[i].status = FUNC0(0);
		ch->sgd_table[i].size = FUNC0(blksz >> 2);
		ch->sgd_table[i].next = FUNC1((uint32_t)ch->sgd_addr +
		    (((i + 1) % blkcnt) * sizeof(struct atiixp_dma_op)));
	}
}