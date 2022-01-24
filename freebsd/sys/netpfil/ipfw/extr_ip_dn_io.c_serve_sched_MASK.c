#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct mq {struct mbuf* head; } ;
struct TYPE_9__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct TYPE_10__ {int bandwidth; int delay; } ;
struct dn_schk {TYPE_3__ link; TYPE_1__* fp; } ;
struct TYPE_12__ {int /*<<< orphan*/ * head; } ;
struct TYPE_11__ {TYPE_5__ mq; } ;
struct dn_sch_inst {scalar_t__ credit; int sched_time; int idle_time; TYPE_4__ dline; int /*<<< orphan*/  kflags; struct dn_schk* sched; } ;
struct TYPE_14__ {int curr_time; int /*<<< orphan*/  evheap; } ;
struct TYPE_13__ {int output_time; } ;
struct TYPE_8__ {struct mbuf* (* dequeue ) (struct dn_sch_inst*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DN_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (scalar_t__,int) ; 
 TYPE_7__ dn_cfg ; 
 TYPE_6__* FUNC2 (struct mbuf*) ; 
 int FUNC3 (struct mbuf*,struct dn_schk*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct dn_sch_inst*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,struct mbuf*) ; 
 struct mbuf* FUNC6 (struct dn_sch_inst*) ; 
 int /*<<< orphan*/  FUNC7 (struct mq*,TYPE_4__*,int) ; 

__attribute__((used)) static struct mbuf *
FUNC8(struct mq *q, struct dn_sch_inst *si, uint64_t now)
{
	struct mq def_q;
	struct dn_schk *s = si->sched;
	struct mbuf *m = NULL;
	int delay_line_idle = (si->dline.mq.head == NULL);
	int done, bw;

	if (q == NULL) {
		q = &def_q;
		q->head = NULL;
	}

	bw = s->link.bandwidth;
	si->kflags &= ~DN_ACTIVE;

	if (bw > 0)
		si->credit += (now - si->sched_time) * bw;
	else
		si->credit = 0;
	si->sched_time = now;
	done = 0;
	while (si->credit >= 0 && (m = s->fp->dequeue(si)) != NULL) {
		uint64_t len_scaled;

		done++;
		len_scaled = (bw == 0) ? 0 : hz *
			(m->m_pkthdr.len * 8 + FUNC3(m, s));
		si->credit -= len_scaled;
		/* Move packet in the delay line */
		FUNC2(m)->output_time = dn_cfg.curr_time + s->link.delay ;
		FUNC5(&si->dline.mq, m);
	}

	/*
	 * If credit >= 0 the instance is idle, mark time.
	 * Otherwise put back in the heap, and adjust the output
	 * time of the last inserted packet, m, which was too early.
	 */
	if (si->credit >= 0) {
		si->idle_time = now;
	} else {
		uint64_t t;
		FUNC0 (bw > 0, ("bw=0 and credit<0 ?"));
		t = FUNC1(bw - 1 - si->credit, bw);
		if (m)
			FUNC2(m)->output_time += t;
		si->kflags |= DN_ACTIVE;
		FUNC4(&dn_cfg.evheap, now + t, si);
	}
	if (delay_line_idle && done)
		FUNC7(q, &si->dline, now);
	return q->head;
}