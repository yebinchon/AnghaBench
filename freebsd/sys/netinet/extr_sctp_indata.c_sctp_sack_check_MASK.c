#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct sctp_association {int send_sack; scalar_t__ numduptsns; scalar_t__ delayed_ack; scalar_t__ data_pkts_seen; scalar_t__ sack_freq; scalar_t__ sctp_cmt_on_off; TYPE_1__ dack_timer; int /*<<< orphan*/  cmt_dac_pkts_rcvd; scalar_t__ primary_destination; scalar_t__ alternate; int /*<<< orphan*/  cumulative_tsn; int /*<<< orphan*/  highest_tsn_inside_map; int /*<<< orphan*/  highest_tsn_inside_nr_map; } ;
struct sctp_tcb {int /*<<< orphan*/  sctp_ep; struct sctp_association asoc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_FROM_SCTP_INDATA ; 
 scalar_t__ FUNC1 (struct sctp_tcb*) ; 
 scalar_t__ SCTP_LOC_17 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCTP_SO_NOT_LOCKED ; 
 scalar_t__ SCTP_STATE_SHUTDOWN_SENT ; 
 int /*<<< orphan*/  SCTP_TIMER_TYPE_RECV ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_cmt_use_dac ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_tcb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_tcb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_tcb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_tcb*,int /*<<< orphan*/ *,scalar_t__) ; 

void
FUNC10(struct sctp_tcb *stcb, int was_a_gap)
{
	struct sctp_association *asoc;
	uint32_t highest_tsn;
	int is_a_gap;

	FUNC7(stcb);
	asoc = &stcb->asoc;
	if (FUNC4(asoc->highest_tsn_inside_nr_map, asoc->highest_tsn_inside_map)) {
		highest_tsn = asoc->highest_tsn_inside_nr_map;
	} else {
		highest_tsn = asoc->highest_tsn_inside_map;
	}
	/* Is there a gap now? */
	is_a_gap = FUNC4(highest_tsn, stcb->asoc.cumulative_tsn);

	/*
	 * Now we need to see if we need to queue a sack or just start the
	 * timer (if allowed).
	 */
	if (FUNC1(stcb) == SCTP_STATE_SHUTDOWN_SENT) {
		/*
		 * Ok special case, in SHUTDOWN-SENT case. here we maker
		 * sure SACK timer is off and instead send a SHUTDOWN and a
		 * SACK
		 */
		if (FUNC2(&stcb->asoc.dack_timer.timer)) {
			FUNC9(SCTP_TIMER_TYPE_RECV,
			    stcb->sctp_ep, stcb, NULL,
			    SCTP_FROM_SCTP_INDATA + SCTP_LOC_17);
		}
		FUNC6(stcb,
		    ((stcb->asoc.alternate) ? stcb->asoc.alternate : stcb->asoc.primary_destination));
		if (is_a_gap) {
			FUNC5(stcb, SCTP_SO_NOT_LOCKED);
		}
	} else {
		/*
		 * CMT DAC algorithm: increase number of packets received
		 * since last ack
		 */
		stcb->asoc.cmt_dac_pkts_rcvd++;

		if ((stcb->asoc.send_sack == 1) ||	/* We need to send a
							 * SACK */
		    ((was_a_gap) && (is_a_gap == 0)) ||	/* was a gap, but no
							 * longer is one */
		    (stcb->asoc.numduptsns) ||	/* we have dup's */
		    (is_a_gap) ||	/* is still a gap */
		    (stcb->asoc.delayed_ack == 0) ||	/* Delayed sack disabled */
		    (stcb->asoc.data_pkts_seen >= stcb->asoc.sack_freq)	/* hit limit of pkts */
		    ) {

			if ((stcb->asoc.sctp_cmt_on_off > 0) &&
			    (FUNC0(sctp_cmt_use_dac)) &&
			    (stcb->asoc.send_sack == 0) &&
			    (stcb->asoc.numduptsns == 0) &&
			    (stcb->asoc.delayed_ack) &&
			    (!FUNC2(&stcb->asoc.dack_timer.timer))) {

				/*
				 * CMT DAC algorithm: With CMT, delay acks
				 * even in the face of
				 *
				 * reordering. Therefore, if acks that do
				 * not have to be sent because of the above
				 * reasons, will be delayed. That is, acks
				 * that would have been sent due to gap
				 * reports will be delayed with DAC. Start
				 * the delayed ack timer.
				 */
				FUNC8(SCTP_TIMER_TYPE_RECV,
				    stcb->sctp_ep, stcb, NULL);
			} else {
				/*
				 * Ok we must build a SACK since the timer
				 * is pending, we got our first packet OR
				 * there are gaps or duplicates.
				 */
				(void)FUNC3(&stcb->asoc.dack_timer.timer);
				FUNC5(stcb, SCTP_SO_NOT_LOCKED);
			}
		} else {
			if (!FUNC2(&stcb->asoc.dack_timer.timer)) {
				FUNC8(SCTP_TIMER_TYPE_RECV,
				    stcb->sctp_ep, stcb, NULL);
			}
		}
	}
}