#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_pagequeue {int /*<<< orphan*/  pq_pdpages; int /*<<< orphan*/  pq_pl; } ;
struct scan_state {scalar_t__ scanned; TYPE_1__* marker; struct vm_pagequeue* pq; } ;
struct TYPE_5__ {int /*<<< orphan*/  q; } ;
struct TYPE_4__ {int aflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PGA_ENQUEUED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__ plinks ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_pagequeue*) ; 

__attribute__((used)) static void
FUNC4(struct scan_state *ss)
{
	struct vm_pagequeue *pq;

	pq = ss->pq;
	FUNC3(pq);
	FUNC0((ss->marker->aflags & PGA_ENQUEUED) != 0,
	    ("marker %p not enqueued", ss->marker));

	FUNC1(&pq->pq_pl, ss->marker, plinks.q);
	FUNC2(ss->marker, PGA_ENQUEUED);
	pq->pq_pdpages += ss->scanned;
}