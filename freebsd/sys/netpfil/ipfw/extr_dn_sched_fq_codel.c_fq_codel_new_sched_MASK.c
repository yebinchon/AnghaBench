#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  oid; } ;
struct dn_queue {int /*<<< orphan*/  fs; struct dn_sch_inst* _si; TYPE_1__ ni; } ;
struct fq_codel_si {TYPE_5__* flows; int /*<<< orphan*/  oldflows; int /*<<< orphan*/  newflows; int /*<<< orphan*/  perturbation; struct dn_queue main_q; } ;
struct TYPE_9__ {int flows_cnt; } ;
struct fq_codel_schk {TYPE_3__ cfg; } ;
struct fq_codel_flow {int dummy; } ;
struct dn_sch_inst {TYPE_2__* sched; } ;
struct TYPE_12__ {int /*<<< orphan*/  ref_count; } ;
struct TYPE_10__ {int maxpkt_size; } ;
struct TYPE_11__ {TYPE_4__ cst; } ;
struct TYPE_8__ {int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DN_QUEUE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DUMMYNET ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_6__ fq_codel_desc ; 
 TYPE_5__* FUNC2 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct dn_sch_inst *_si)
{
	struct fq_codel_si *si;
	struct dn_queue *q;
	struct fq_codel_schk *schk;
	int i;

	si = (struct fq_codel_si *)_si;
	schk = (struct fq_codel_schk *)(_si->sched+1);

	if(si->flows) {
		FUNC0("si already configured!");
		return 0;
	}

	/* init the main queue */
	q = &si->main_q;
	FUNC4(&q->ni.oid, DN_QUEUE, sizeof(*q));
	q->_si = _si;
	q->fs = _si->sched->fs;

	/* allocate memory for flows array */
	si->flows = FUNC2(schk->cfg.flows_cnt,
	    sizeof(struct fq_codel_flow), M_DUMMYNET, M_NOWAIT | M_ZERO);
	if (si->flows == NULL) {
		FUNC0("cannot allocate memory for fq_codel configuration parameters");
		return ENOMEM ; 
	}

	/* init perturbation for this si */
	si->perturbation = FUNC3();

	/* init the old and new flows lists */
	FUNC1(&si->newflows);
	FUNC1(&si->oldflows);

	/* init the flows (sub-queues) */
	for (i = 0; i < schk->cfg.flows_cnt; i++) {
		/* init codel */
		si->flows[i].cst.maxpkt_size = 500;
	}

	fq_codel_desc.ref_count++;
	return 0;
}