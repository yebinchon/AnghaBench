#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* next; int /*<<< orphan*/  freep; int /*<<< orphan*/  getp; int /*<<< orphan*/  dmat; int /*<<< orphan*/  dev_dmat; } ;
typedef  TYPE_1__ m_pool_s ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
struct TYPE_9__ {TYPE_1__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  MEMO_CLUSTER_SIZE ; 
 int /*<<< orphan*/  ___dma_freep ; 
 int /*<<< orphan*/  ___dma_getp ; 
 TYPE_1__* FUNC0 (TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__ mp0 ; 

__attribute__((used)) static m_pool_s *FUNC3(bus_dma_tag_t dev_dmat)
{
	m_pool_s *mp = NULL;

	mp = FUNC0(&mp0, sizeof(*mp), "MPOOL");
	if (mp) {
		mp->dev_dmat = dev_dmat;
		if (!FUNC2(dev_dmat, 1, MEMO_CLUSTER_SIZE,
			       BUS_SPACE_MAXADDR_32BIT,
			       BUS_SPACE_MAXADDR,
			       NULL, NULL, MEMO_CLUSTER_SIZE, 1,
			       MEMO_CLUSTER_SIZE, 0,
			       NULL, NULL, &mp->dmat)) {
			mp->getp = ___dma_getp;
#ifdef	MEMO_FREE_UNUSED
			mp->freep = ___dma_freep;
#endif
			mp->next = mp0.next;
			mp0.next = mp;
			return mp;
		}
	}
	if (mp)
		FUNC1(&mp0, mp, sizeof(*mp), "MPOOL");
	return NULL;
}