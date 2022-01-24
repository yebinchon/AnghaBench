#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct ertt {int flags; int /*<<< orphan*/  rtt; } ;
struct cdg {scalar_t__ sample_q_size; long max_qtrend; long min_qtrend; scalar_t__ consec_cong_cnt; scalar_t__ shadow_w; scalar_t__ maxrtt_in_prevrtt; scalar_t__ maxrtt_in_rtt; scalar_t__ minrtt_in_rtt; scalar_t__ minrtt_in_prevrtt; int /*<<< orphan*/  queue_state; } ;
struct cc_var {struct cdg* cc_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cc_var*,int /*<<< orphan*/ ) ; 
 scalar_t__ CC_ACK ; 
 int /*<<< orphan*/  CC_CDG_DELAY ; 
 int /*<<< orphan*/  CDG_Q_EMPTY ; 
 int /*<<< orphan*/  CDG_Q_FALLING ; 
 int /*<<< orphan*/  CDG_Q_FULL ; 
 int /*<<< orphan*/  CDG_Q_RISING ; 
 long D_P_E ; 
 int ERTT_NEW_MEASUREMENT ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ V_cdg_consec_cong ; 
 scalar_t__ V_cdg_hold_backoff ; 
 int /*<<< orphan*/  FUNC2 (struct cdg*,long,long) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_var*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cc_var*,int) ; 
 int /*<<< orphan*/  ertt_id ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  osd ; 
 int FUNC8 (long) ; 
 int /*<<< orphan*/  snd_cwnd ; 
 int /*<<< orphan*/  snd_ssthresh ; 
 int /*<<< orphan*/  t_flags ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(struct cc_var *ccv, uint16_t ack_type)
{
	struct cdg *cdg_data;
	struct ertt *e_t;
	long qdiff_max, qdiff_min;
	int congestion, new_measurement, slowstart;

	cdg_data = ccv->cc_data;
	e_t = (struct ertt *)FUNC7(FUNC0(ccv, osd), ertt_id);
	new_measurement = e_t->flags & ERTT_NEW_MEASUREMENT;
	congestion = 0;
	cdg_data->maxrtt_in_rtt = FUNC5(e_t->rtt, cdg_data->maxrtt_in_rtt);
	cdg_data->minrtt_in_rtt = FUNC6(e_t->rtt, cdg_data->minrtt_in_rtt);

	if (new_measurement) {
		slowstart = (FUNC0(ccv, snd_cwnd) <= FUNC0(ccv, snd_ssthresh));
		/*
		 * Update smoothed gradient measurements. Since we are only
		 * using one measurement per RTT, use max or min rtt_in_rtt.
		 * This is also less noisy than a sample RTT measurement. Max
		 * RTT measurements can have trouble due to OS issues.
		 */
		if (cdg_data->maxrtt_in_prevrtt) {
			qdiff_max = ((long)(cdg_data->maxrtt_in_rtt -
			    cdg_data->maxrtt_in_prevrtt) << D_P_E );
			qdiff_min = ((long)(cdg_data->minrtt_in_rtt -
			    cdg_data->minrtt_in_prevrtt) << D_P_E );

			if (cdg_data->sample_q_size == 0) {
				cdg_data->max_qtrend = qdiff_max;
				cdg_data->min_qtrend = qdiff_min;
			} else
				FUNC2(cdg_data, qdiff_max, qdiff_min);

			/* Probabilistic backoff with respect to gradient. */
			if (slowstart && qdiff_min > 0)
				congestion = FUNC8(qdiff_min);
			else if (cdg_data->min_qtrend > 0)
				congestion = FUNC8(cdg_data->min_qtrend);
			else if (slowstart && qdiff_max > 0)
				congestion = FUNC8(qdiff_max);
			else if (cdg_data->max_qtrend > 0)
				congestion = FUNC8(cdg_data->max_qtrend);
			
			/* Update estimate of queue state. */
			if (cdg_data->min_qtrend > 0 &&
			    cdg_data->max_qtrend <= 0) {
				cdg_data->queue_state = CDG_Q_FULL;
			} else if (cdg_data->min_qtrend >= 0 &&
			    cdg_data->max_qtrend < 0) {
				cdg_data->queue_state = CDG_Q_EMPTY;
				cdg_data->shadow_w = 0;
			} else if (cdg_data->min_qtrend > 0 &&
			    cdg_data->max_qtrend > 0) {
				cdg_data->queue_state = CDG_Q_RISING;
			} else if (cdg_data->min_qtrend < 0 &&
			    cdg_data->max_qtrend < 0) {
				cdg_data->queue_state = CDG_Q_FALLING;
			}

			if (cdg_data->min_qtrend < 0 ||
			    cdg_data->max_qtrend < 0)
				cdg_data->consec_cong_cnt = 0;
		}

		cdg_data->minrtt_in_prevrtt = cdg_data->minrtt_in_rtt;
		cdg_data->minrtt_in_rtt = INT_MAX;
		cdg_data->maxrtt_in_prevrtt = cdg_data->maxrtt_in_rtt;
		cdg_data->maxrtt_in_rtt = 0;
		e_t->flags &= ~ERTT_NEW_MEASUREMENT;
	}

	if (congestion) {
		cdg_data->consec_cong_cnt++;
		if (!FUNC1(FUNC0(ccv, t_flags))) {
			if (cdg_data->consec_cong_cnt <= V_cdg_consec_cong)
				FUNC3(ccv, CC_CDG_DELAY);
			else
				/*
				 * We have been backing off but the queue is not
				 * falling. Assume we are competing with
				 * loss-based flows and don't back off for the
				 * next V_cdg_hold_backoff RTT periods.
				 */
				if (cdg_data->consec_cong_cnt >=
				    V_cdg_consec_cong + V_cdg_hold_backoff)
					cdg_data->consec_cong_cnt = 0;

			/* Won't see effect until 2nd RTT. */
			cdg_data->maxrtt_in_prevrtt = 0;
			/*
			 * Resync shadow window in case we are competing with a
			 * loss based flow
			 */
			cdg_data->shadow_w = FUNC9(FUNC0(ccv, snd_cwnd),
			    cdg_data->shadow_w);
		}
	} else if (ack_type == CC_ACK)
		FUNC4(ccv, new_measurement);
}