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
typedef  int /*<<< orphan*/  uint64_t ;
struct pie_status {int sflags; scalar_t__ burst_allowance; int drop_prob; scalar_t__ one_third_q_size; int current_qdelay; int qdelay_old; scalar_t__ accu_prob; struct dn_aqm_pie_parms* parms; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct m_tag {int dummy; } ;
struct fq_pie_si {int dummy; } ;
struct TYPE_4__ {scalar_t__ len_bytes; } ;
struct fq_pie_flow {int /*<<< orphan*/  mq; TYPE_2__ stats; struct pie_status pst; } ;
struct dn_aqm_pie_parms {int flags; int max_ecnth; int qdelay_ref; scalar_t__ max_burst; } ;
typedef  int /*<<< orphan*/  aqm_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  AQM_UNOW ; 
 int /*<<< orphan*/  DN_AQM_MTAG_TS ; 
 int DROP ; 
 int ENQUE ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  MTAG_ABI_COMPAT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int PIE_ACTIVE ; 
 int PIE_DEPRATEEST_ENABLED ; 
 int PIE_ECN_ENABLED ; 
 int PIE_FIX_POINT_BITS ; 
 int PIE_ON_OFF_MODE_ENABLED ; 
 int PIE_PROB_BITS ; 
 int FUNC1 (struct pie_status*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct fq_pie_flow*) ; 
 int /*<<< orphan*/  FUNC4 (struct pie_status*) ; 
 int /*<<< orphan*/  FUNC5 (struct fq_pie_flow*,struct fq_pie_si*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 struct m_tag* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct m_tag* FUNC8 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,struct m_tag*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct mbuf*) ; 

__attribute__((used)) static int
FUNC11(struct fq_pie_flow *q, struct mbuf* m, struct fq_pie_si *si)
{
	uint64_t len;
	struct pie_status *pst;
	struct dn_aqm_pie_parms *pprms;
	int t;

	len = m->m_pkthdr.len;
	pst  = &q->pst;
	pprms = pst->parms;
	t = ENQUE;

	/* drop/mark the packet when PIE is active and burst time elapsed */
	if (pst->sflags & PIE_ACTIVE && pst->burst_allowance == 0
		&& FUNC1(pst, q->stats.len_bytes) == DROP) {
			/* 
			 * if drop_prob over ECN threshold, drop the packet 
			 * otherwise mark and enqueue it.
			 */
			if (pprms->flags & PIE_ECN_ENABLED && pst->drop_prob < 
				(pprms->max_ecnth << (PIE_PROB_BITS - PIE_FIX_POINT_BITS))
				&& FUNC2(m))
				t = ENQUE;
			else
				t = DROP;
		}

	/* Turn PIE on when 1/3 of the queue is full */ 
	if (!(pst->sflags & PIE_ACTIVE) && q->stats.len_bytes >= 
		pst->one_third_q_size) {
		FUNC3(q);
	}

	/*  reset burst tolerance and optinally turn PIE off*/
	if (pst->drop_prob == 0 && pst->current_qdelay < (pprms->qdelay_ref >> 1)
		&& pst->qdelay_old < (pprms->qdelay_ref >> 1)) {
			
			pst->burst_allowance = pprms->max_burst;
		if (pprms->flags & PIE_ON_OFF_MODE_ENABLED && q->stats.len_bytes<=0)
			FUNC4(pst);
	}

	/* Use timestamp if Departure Rate Estimation mode is disabled */
	if (t != DROP && !(pprms->flags & PIE_DEPRATEEST_ENABLED)) {
		/* Add TS to mbuf as a TAG */
		struct m_tag *mtag;
		mtag = FUNC8(m, MTAG_ABI_COMPAT, DN_AQM_MTAG_TS, NULL);
		if (mtag == NULL)
			mtag = FUNC7(MTAG_ABI_COMPAT, DN_AQM_MTAG_TS,
				sizeof(aqm_time_t), M_NOWAIT);
		if (mtag == NULL) {
			FUNC6(m); 
			t = DROP;
		}
		*(aqm_time_t *)(mtag + 1) = AQM_UNOW;
		FUNC9(m, mtag);
	}

	if (t != DROP) {
		FUNC10(&q->mq, m);
		FUNC5(q, si, len, 0);
		return 0;
	} else {
		FUNC5(q, si, len, 1);
		pst->accu_prob = 0;
		FUNC0(m);
		return 1;
	}

	return 0;
}