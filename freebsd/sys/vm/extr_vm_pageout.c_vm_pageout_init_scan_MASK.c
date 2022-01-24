#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct vm_pagequeue {int /*<<< orphan*/  pq_pl; } ;
struct scan_state {int maxscan; scalar_t__ scanned; TYPE_1__* marker; struct vm_pagequeue* pq; int /*<<< orphan*/  bq; } ;
struct TYPE_10__ {int /*<<< orphan*/  q; } ;
struct TYPE_9__ {int aflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PGA_ENQUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_5__ plinks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_pagequeue*) ; 

__attribute__((used)) static void
FUNC7(struct scan_state *ss, struct vm_pagequeue *pq,
    vm_page_t marker, vm_page_t after, int maxscan)
{

	FUNC5(pq);
	FUNC0((marker->aflags & PGA_ENQUEUED) == 0,
	    ("marker %p already enqueued", marker));

	if (after == NULL)
		FUNC2(&pq->pq_pl, marker, plinks.q);
	else
		FUNC1(&pq->pq_pl, after, marker, plinks.q);
	FUNC4(marker, PGA_ENQUEUED);

	FUNC3(&ss->bq);
	ss->pq = pq;
	ss->marker = marker;
	ss->maxscan = maxscan;
	ss->scanned = 0;
	FUNC6(pq);
}