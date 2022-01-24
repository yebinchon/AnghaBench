#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
struct vm_domain {int /*<<< orphan*/  vmd_inacthead; } ;
struct scan_state {int /*<<< orphan*/ * marker; TYPE_1__* pq; } ;
struct TYPE_12__ {int /*<<< orphan*/  q; } ;
struct TYPE_11__ {scalar_t__ queue; int aflags; } ;
struct TYPE_10__ {int /*<<< orphan*/  pq_pl; } ;

/* Variables and functions */
 int PGA_ENQUEUED ; 
 int PGA_REQUEUE ; 
 int PGA_REQUEUE_HEAD ; 
 scalar_t__ PQ_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_7__ plinks ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 struct vm_domain* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(struct scan_state *ss, vm_page_t m)
{
	struct vm_domain *vmd;

	if (m->queue != PQ_INACTIVE || (m->aflags & PGA_ENQUEUED) != 0)
		return (0);
	FUNC3(m, PGA_ENQUEUED);
	if ((m->aflags & PGA_REQUEUE_HEAD) != 0) {
		vmd = FUNC4(m);
		FUNC0(&vmd->vmd_inacthead, m, plinks.q);
		FUNC2(m, PGA_REQUEUE | PGA_REQUEUE_HEAD);
	} else if ((m->aflags & PGA_REQUEUE) != 0) {
		FUNC1(&ss->pq->pq_pl, m, plinks.q);
		FUNC2(m, PGA_REQUEUE | PGA_REQUEUE_HEAD);
	} else
		FUNC0(ss->marker, m, plinks.q);
	return (1);
}