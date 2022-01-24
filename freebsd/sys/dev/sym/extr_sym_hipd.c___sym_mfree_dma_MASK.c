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
struct m_pool {int /*<<< orphan*/  nump; } ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_pool*) ; 
 struct m_pool* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct m_pool*,void*,int,char*) ; 

__attribute__((used)) static void
FUNC3(bus_dma_tag_t dev_dmat, void *m, int size, char *name)
{
	struct m_pool *mp;

	/* Lock */
	mp = FUNC1(dev_dmat);
	if (mp)
		FUNC2(mp, m, size, name);
#ifdef	MEMO_FREE_UNUSED
	if (mp && !mp->nump)
		___del_dma_pool(mp);
#endif
	/* Unlock */
}