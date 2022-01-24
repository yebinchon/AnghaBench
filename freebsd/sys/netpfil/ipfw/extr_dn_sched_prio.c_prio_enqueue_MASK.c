#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct prio_si {struct dn_queue** q_array; int /*<<< orphan*/  bitmap; } ;
struct mbuf {int dummy; } ;
struct dn_sch_inst {int dummy; } ;
struct dn_queue {TYPE_2__* fs; } ;
struct TYPE_3__ {int* par; } ;
struct TYPE_4__ {TYPE_1__ fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct dn_queue*,struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC3(struct dn_sch_inst *_si, struct dn_queue *q, struct mbuf *m)
{
	struct prio_si *si = (struct prio_si *)(_si + 1);
	int prio = q->fs->fs.par[0];

	if (FUNC2(prio, &si->bitmap) == 0) {
		/* No queue with this priority, insert */
		FUNC0(prio, &si->bitmap);
		si->q_array[prio] = q;
	} else { /* use the existing queue */
		q = si->q_array[prio];
	}
	if (FUNC1(q, m, 0))
		return 1;
	return 0;
}