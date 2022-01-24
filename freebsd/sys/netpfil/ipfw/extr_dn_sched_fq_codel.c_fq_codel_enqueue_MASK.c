#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
struct TYPE_8__ {scalar_t__ sched; } ;
struct fq_codel_si {TYPE_5__* flows; int /*<<< orphan*/  newflows; TYPE_1__ _si; } ;
struct dn_sch_fq_codel_parms {int flows_cnt; scalar_t__ limit; int /*<<< orphan*/  quantum; } ;
struct fq_codel_schk {struct dn_sch_fq_codel_parms cfg; } ;
struct dn_sch_inst {int dummy; } ;
struct TYPE_10__ {scalar_t__ length; } ;
struct dn_queue {TYPE_3__ ni; } ;
struct TYPE_11__ {scalar_t__ length; } ;
struct TYPE_9__ {int dropping; scalar_t__ first_above_time; } ;
struct TYPE_12__ {int active; TYPE_4__ stats; TYPE_2__ cst; int /*<<< orphan*/  deficit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,struct fq_codel_si*) ; 
 int FUNC3 (TYPE_5__*,struct mbuf*,struct fq_codel_si*) ; 
 int /*<<< orphan*/  flowchain ; 
 int FUNC4 (struct mbuf*,int,struct fq_codel_si*) ; 

__attribute__((used)) static int 
FUNC5(struct dn_sch_inst *_si, struct dn_queue *_q, 
	struct mbuf *m)
{
	struct fq_codel_si *si;
	struct fq_codel_schk *schk;
	struct dn_sch_fq_codel_parms *param;
	struct dn_queue *mainq;
	int idx, drop, i, maxidx;

	mainq = (struct dn_queue *)(_si + 1);
	si = (struct fq_codel_si *)_si;
	schk = (struct fq_codel_schk *)(si->_si.sched+1);
	param = &schk->cfg;

	 /* classify a packet to queue number*/
	idx = FUNC4(m, param->flows_cnt, si);
	/* enqueue packet into appropriate queue using CoDel AQM.
	 * Note: 'codel_enqueue' function returns 1 only when it unable to 
	 * add timestamp to packet (no limit check)*/
	drop = FUNC3(&si->flows[idx], m, si);
	
	/* codel unable to timestamp a packet */ 
	if (drop)
		return 1;
	
	/* If the flow (sub-queue) is not active ,then add it to the tail of
	 * new flows list, initialize and activate it.
	 */
	if (!si->flows[idx].active ) {
		FUNC1(&si->newflows, &si->flows[idx], flowchain);
		si->flows[idx].deficit = param->quantum;
		si->flows[idx].cst.dropping = false;
		si->flows[idx].cst.first_above_time = 0;
		si->flows[idx].active = 1;
		//D("activate %d",idx);
	}

	/* check the limit for all queues and remove a packet from the
	 * largest one 
	 */
	if (mainq->ni.length > schk->cfg.limit) { FUNC0("over limit");
		/* find first active flow */
		for (maxidx = 0; maxidx < schk->cfg.flows_cnt; maxidx++)
			if (si->flows[maxidx].active)
				break;
		if (maxidx < schk->cfg.flows_cnt) {
			/* find the largest sub- queue */
			for (i = maxidx + 1; i < schk->cfg.flows_cnt; i++) 
				if (si->flows[i].active && si->flows[i].stats.length >
					si->flows[maxidx].stats.length)
					maxidx = i;
			FUNC2(&si->flows[maxidx], si);
			FUNC0("maxidx = %d",maxidx);
			drop = 1;
		}
	}

	return drop;
}