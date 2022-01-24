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
struct netmap_obj_pool {int objtotal; } ;
struct netmap_mem_d {struct netmap_obj_pool* pools; } ;
struct TYPE_2__ {struct lut_entry* lut; } ;
struct netmap_adapter {struct netmap_mem_d* nm_mem; TYPE_1__ na_lut; } ;
struct lut_entry {int* vaddr; } ;

/* Variables and functions */
 size_t NETMAP_BUF_POOL ; 
 int NM_DEBUG_MEM ; 
 int netmap_debug ; 
 scalar_t__ FUNC0 (struct netmap_obj_pool*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void
FUNC4(struct netmap_adapter *na, uint32_t head)
{
	struct lut_entry *lut = na->na_lut.lut;
	struct netmap_mem_d *nmd = na->nm_mem;
	struct netmap_obj_pool *p = &nmd->pools[NETMAP_BUF_POOL];
	uint32_t i, cur, *buf;

	FUNC1("freeing the extra list");
	for (i = 0; head >=2 && head < p->objtotal; i++) {
		cur = head;
		buf = lut[head].vaddr;
		head = *buf;
		*buf = 0;
		if (FUNC0(p, cur))
			break;
	}
	if (head != 0)
		FUNC2("breaking with head %d", head);
	if (netmap_debug & NM_DEBUG_MEM)
		FUNC3("freed %d buffers", i);
}