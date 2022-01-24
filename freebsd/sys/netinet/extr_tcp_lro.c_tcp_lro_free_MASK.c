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
struct lro_entry {int /*<<< orphan*/  m_head; } ;
struct lro_ctrl {unsigned int lro_mbuf_count; TYPE_1__* lro_mbuf_data; scalar_t__ lro_hashsz; TYPE_1__* lro_hash; int /*<<< orphan*/  lro_active; int /*<<< orphan*/  lro_free; } ;
struct TYPE_2__ {int /*<<< orphan*/  mb; } ;

/* Variables and functions */
 struct lro_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_LRO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lro_entry*) ; 

void
FUNC5(struct lro_ctrl *lc)
{
	struct lro_entry *le;
	unsigned x;

	/* reset LRO free list */
	FUNC1(&lc->lro_free);

	/* free active mbufs, if any */
	while ((le = FUNC0(&lc->lro_active)) != NULL) {
		FUNC4(le);
		FUNC3(le->m_head);
	}

	/* free hash table */
	FUNC2(lc->lro_hash, M_LRO);
	lc->lro_hash = NULL;
	lc->lro_hashsz = 0;

	/* free mbuf array, if any */
	for (x = 0; x != lc->lro_mbuf_count; x++)
		FUNC3(lc->lro_mbuf_data[x].mb);
	lc->lro_mbuf_count = 0;

	/* free allocated memory, if any */
	FUNC2(lc->lro_mbuf_data, M_LRO);
	lc->lro_mbuf_data = NULL;
}