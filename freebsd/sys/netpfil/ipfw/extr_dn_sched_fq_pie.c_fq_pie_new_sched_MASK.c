#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct fq_pie_si_extra {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  oid; } ;
struct dn_queue {int /*<<< orphan*/  fs; struct dn_sch_inst* _si; TYPE_1__ ni; } ;
struct fq_pie_si {TYPE_5__* si_extra; int /*<<< orphan*/  oldflows; int /*<<< orphan*/  newflows; int /*<<< orphan*/  perturbation; struct dn_queue main_q; } ;
struct TYPE_11__ {int flows_cnt; int /*<<< orphan*/  pcfg; } ;
struct fq_pie_schk {TYPE_4__ cfg; } ;
struct TYPE_10__ {int /*<<< orphan*/ * parms; } ;
struct fq_pie_flow {TYPE_5__* psi_extra; TYPE_3__ pst; } ;
struct dn_sch_inst {TYPE_2__* sched; } ;
struct TYPE_13__ {int /*<<< orphan*/  ref_count; } ;
struct TYPE_12__ {scalar_t__ nr_active_q; struct fq_pie_flow* flows; } ;
struct TYPE_9__ {int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DN_QUEUE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DUMMYNET ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_7__ fq_pie_desc ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 struct fq_pie_flow* FUNC4 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fq_pie_flow*,struct fq_pie_schk*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct dn_sch_inst *_si)
{
	struct fq_pie_si *si;
	struct dn_queue *q;
	struct fq_pie_schk *schk;
	struct fq_pie_flow *flows;
	int i;

	si = (struct fq_pie_si *)_si;
	schk = (struct fq_pie_schk *)(_si->sched+1);

	if(si->si_extra) {
		FUNC0("si already configured!");
		return 0;
	}

	/* init the main queue */
	q = &si->main_q;
	FUNC7(&q->ni.oid, DN_QUEUE, sizeof(*q));
	q->_si = _si;
	q->fs = _si->sched->fs;

	/* allocate memory for scheduler instance extra vars */
	si->si_extra = FUNC3(sizeof(struct fq_pie_si_extra),
		 M_DUMMYNET, M_NOWAIT | M_ZERO);
	if (si->si_extra == NULL) {
		FUNC0("cannot allocate memory for fq_pie si extra vars");
		return ENOMEM ; 
	}
	/* allocate memory for flows array */
	si->si_extra->flows = FUNC4(schk->cfg.flows_cnt,
	    sizeof(struct fq_pie_flow), M_DUMMYNET, M_NOWAIT | M_ZERO);
	flows = si->si_extra->flows;
	if (flows == NULL) {
		FUNC2(si->si_extra, M_DUMMYNET);
		si->si_extra = NULL;
		FUNC0("cannot allocate memory for fq_pie flows");
		return ENOMEM ; 
	}

	/* init perturbation for this si */
	si->perturbation = FUNC6();
	si->si_extra->nr_active_q = 0;

	/* init the old and new flows lists */
	FUNC1(&si->newflows);
	FUNC1(&si->oldflows);

	/* init the flows (sub-queues) */
	for (i = 0; i < schk->cfg.flows_cnt; i++) {
		flows[i].pst.parms = &schk->cfg.pcfg;
		flows[i].psi_extra = si->si_extra;
		FUNC5(&flows[i], schk);
	}

	fq_pie_desc.ref_count++;

	return 0;
}