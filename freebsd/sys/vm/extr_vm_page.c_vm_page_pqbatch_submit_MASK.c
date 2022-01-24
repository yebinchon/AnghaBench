#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  size_t uint8_t ;
struct vm_pagequeue {int dummy; } ;
struct vm_batchqueue {int dummy; } ;
struct TYPE_10__ {struct vm_pagequeue* vmd_pagequeues; } ;
struct TYPE_9__ {int oflags; size_t queue; int aflags; int /*<<< orphan*/ * object; } ;

/* Variables and functions */
 struct vm_batchqueue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PGA_ENQUEUED ; 
 size_t PQ_COUNT ; 
 size_t PQ_NONE ; 
 int VPO_UNMANAGED ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** pqbatch ; 
 scalar_t__ FUNC6 (struct vm_batchqueue*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_4__* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC10 (struct vm_pagequeue*) ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_pagequeue*,struct vm_batchqueue*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_pagequeue*,TYPE_1__*) ; 

void
FUNC14(vm_page_t m, uint8_t queue)
{
	struct vm_batchqueue *bq;
	struct vm_pagequeue *pq;
	int domain;

	FUNC1((m->oflags & VPO_UNMANAGED) == 0,
	    ("page %p is unmanaged", m));
	FUNC1(FUNC5(FUNC7(m)) || m->object == NULL,
	    ("missing synchronization for page %p", m));
	FUNC1(queue < PQ_COUNT, ("invalid queue %d", queue));

	domain = FUNC11(m);
	pq = &FUNC8(m)->vmd_pagequeues[queue];

	FUNC3();
	bq = FUNC0(pqbatch[domain][queue]);
	if (FUNC6(bq, m)) {
		FUNC4();
		return;
	}
	FUNC4();
	FUNC9(pq);
	FUNC3();
	bq = FUNC0(pqbatch[domain][queue]);
	FUNC12(pq, bq, queue);

	/*
	 * The page may have been logically dequeued before we acquired the
	 * page queue lock.  In this case, since we either hold the page lock
	 * or the page is being freed, a different thread cannot be concurrently
	 * enqueuing the page.
	 */
	if (FUNC2(m->queue == queue))
		FUNC13(pq, m);
	else {
		FUNC1(m->queue == PQ_NONE,
		    ("invalid queue transition for page %p", m));
		FUNC1((m->aflags & PGA_ENQUEUED) == 0,
		    ("page %p is enqueued with invalid queue index", m));
	}
	FUNC10(pq);
	FUNC4();
}