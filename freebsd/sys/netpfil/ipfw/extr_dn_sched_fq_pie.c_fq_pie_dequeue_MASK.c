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
struct TYPE_4__ {scalar_t__ len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct fq_pie_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ sched; } ;
struct fq_pie_si {struct fq_pie_list oldflows; struct fq_pie_list newflows; TYPE_1__ _si; } ;
struct dn_sch_fq_pie_parms {scalar_t__ quantum; } ;
struct fq_pie_schk {struct dn_sch_fq_pie_parms cfg; } ;
struct fq_pie_flow {scalar_t__ deficit; int /*<<< orphan*/  pst; scalar_t__ active; } ;
struct dn_sch_inst {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fq_pie_list*) ; 
 struct fq_pie_flow* FUNC1 (struct fq_pie_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct fq_pie_list*,struct fq_pie_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fq_pie_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flowchain ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC5 (struct fq_pie_flow*,struct fq_pie_si*) ; 

__attribute__((used)) static struct mbuf *
FUNC6(struct dn_sch_inst *_si)
{ 
	struct fq_pie_si *si;
	struct fq_pie_schk *schk;
	struct dn_sch_fq_pie_parms *param;
	struct fq_pie_flow *f;
	struct mbuf *mbuf;
	struct fq_pie_list *fq_pie_flowlist;

	si = (struct fq_pie_si *)_si;
	schk = (struct fq_pie_schk *)(si->_si.sched+1);
	param = &schk->cfg;

	do {
		/* select a list to start with */
		if (FUNC0(&si->newflows))
			fq_pie_flowlist = &si->oldflows;
		else
			fq_pie_flowlist = &si->newflows;

		/* Both new and old queue lists are empty, return NULL */
		if (FUNC0(fq_pie_flowlist)) 
			return NULL;

		f = FUNC1(fq_pie_flowlist);
		while (f != NULL)	{
			/* if there is no flow(sub-queue) deficit, increase deficit
			 * by quantum, move the flow to the tail of old flows list
			 * and try another flow.
			 * Otherwise, the flow will be used for dequeue.
			 */
			if (f->deficit < 0) {
				 f->deficit += param->quantum;
				 FUNC3(fq_pie_flowlist, flowchain);
				 FUNC2(&si->oldflows, f, flowchain);
			 } else 
				 break;

			f = FUNC1(fq_pie_flowlist);
		}
		
		/* the new flows list is empty, try old flows list */
		if (FUNC0(fq_pie_flowlist)) 
			continue;

		/* Dequeue a packet from the selected flow */
		mbuf = FUNC5(f, si);

		/* pie did not return a packet */
		if (!mbuf) {
			/* If the selected flow belongs to new flows list, then move 
			 * it to the tail of old flows list. Otherwise, deactivate it and
			 * remove it from the old list and
			 */
			if (fq_pie_flowlist == &si->newflows) {
				FUNC3(fq_pie_flowlist, flowchain);
				FUNC2(&si->oldflows, f, flowchain);
			}	else {
				f->active = 0;
				FUNC4(&f->pst);
				FUNC3(fq_pie_flowlist, flowchain);
			}
			/* start again */
			continue;
		}

		/* we have a packet to return, 
		 * update flow deficit and return the packet*/
		f->deficit -= mbuf->m_pkthdr.len;
		return mbuf;

	} while (1);
	
	/* unreachable point */
	return NULL;
}