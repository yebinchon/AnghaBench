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
 struct m_pool* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct m_pool*) ; 
 struct m_pool* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct m_pool*,int,char*) ; 

__attribute__((used)) static void *FUNC4(bus_dma_tag_t dev_dmat, int size, char *name)
{
	struct m_pool *mp;
	void *m = NULL;

	/* Lock */
	mp = FUNC2(dev_dmat);
	if (!mp)
		mp = FUNC0(dev_dmat);
	if (mp)
		m = FUNC3(mp, size, name);
#ifdef	MEMO_FREE_UNUSED
	if (mp && !mp->nump)
		___del_dma_pool(mp);
#endif
	/* Unlock */

	return m;
}