#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  tsn; scalar_t__ chunk_was_revoked; int /*<<< orphan*/  fast_retran_tsn; int /*<<< orphan*/  cwnd_at_send; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
struct sctp_tmit_chunk {int snd_count; scalar_t__ send_size; TYPE_2__ rec; struct sctp_nets* whoTo; int /*<<< orphan*/  book_size; int /*<<< orphan*/  sent; int /*<<< orphan*/  sent_rcv_time; scalar_t__ do_rtt; } ;
struct sctp_tcb {TYPE_4__* sctp_ep; } ;
struct sctp_nets {int /*<<< orphan*/  flight_size; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  cwnd; int /*<<< orphan*/  last_sent_time; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* sctp_cwnd_update_packet_transmitted ) (struct sctp_tcb*,struct sctp_nets*) ;} ;
struct sctp_association {scalar_t__ peers_rwnd; scalar_t__ total_flight; TYPE_5__ cc_functions; int /*<<< orphan*/  sent_queue_cnt; int /*<<< orphan*/  sent_queue; int /*<<< orphan*/  send_queue_cnt; int /*<<< orphan*/  send_queue; } ;
struct TYPE_8__ {scalar_t__ sctp_sws_sender; } ;
struct TYPE_9__ {TYPE_3__ sctp_ep; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DATAGRAM_SENT ; 
 int /*<<< orphan*/  SCTP_DECREASE_PEER_RWND ; 
 int SCTP_FLIGHT_LOGGING_ENABLE ; 
 int /*<<< orphan*/  SCTP_FLIGHT_LOG_UP ; 
 int SCTP_LOG_RWND_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sctp_tmit_chunk*,struct sctp_tmit_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_tmit_chunk*,struct sctp_tmit_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sctp_tmit_chunk*,int /*<<< orphan*/ ) ; 
 struct sctp_tmit_chunk* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sctp_tmit_chunk* FUNC7 (struct sctp_tmit_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sctp_tmit_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_tmit_chunk*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  sctp_logging_level ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_next ; 
 int /*<<< orphan*/  sctp_peer_chunk_oh ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sctp_tcb*,struct sctp_tmit_chunk*) ; 
 int /*<<< orphan*/  sctpchunk_listhead ; 
 int /*<<< orphan*/  sctps_windowprobed ; 
 int /*<<< orphan*/  FUNC16 (struct sctp_tcb*,struct sctp_nets*) ; 

__attribute__((used)) static void
FUNC17(struct sctp_tcb *stcb,
    struct sctp_association *asoc,
    struct sctp_tmit_chunk **data_list,
    int bundle_at,
    struct sctp_nets *net)
{
	int i;
	struct sctp_tmit_chunk *tp1;

	for (i = 0; i < bundle_at; i++) {
		/* off of the send queue */
		FUNC8(&asoc->send_queue, data_list[i], sctp_next);
		asoc->send_queue_cnt--;
		if (i > 0) {
			/*
			 * Any chunk NOT 0 you zap the time chunk 0 gets
			 * zapped or set based on if a RTO measurment is
			 * needed.
			 */
			data_list[i]->do_rtt = 0;
		}
		/* record time */
		data_list[i]->sent_rcv_time = net->last_sent_time;
		data_list[i]->rec.data.cwnd_at_send = net->cwnd;
		data_list[i]->rec.data.fast_retran_tsn = data_list[i]->rec.data.tsn;
		if (data_list[i]->whoTo == NULL) {
			data_list[i]->whoTo = net;
			FUNC9(&net->ref_count, 1);
		}
		/* on to the sent queue */
		tp1 = FUNC6(&asoc->sent_queue, sctpchunk_listhead);
		if ((tp1) && FUNC2(tp1->rec.data.tsn, data_list[i]->rec.data.tsn)) {
			struct sctp_tmit_chunk *tpp;

			/* need to move back */
	back_up_more:
			tpp = FUNC7(tp1, sctpchunk_listhead, sctp_next);
			if (tpp == NULL) {
				FUNC4(tp1, data_list[i], sctp_next);
				goto all_done;
			}
			tp1 = tpp;
			if (FUNC2(tp1->rec.data.tsn, data_list[i]->rec.data.tsn)) {
				goto back_up_more;
			}
			FUNC3(&asoc->sent_queue, tp1, data_list[i], sctp_next);
		} else {
			FUNC5(&asoc->sent_queue,
			    data_list[i],
			    sctp_next);
		}
all_done:
		/* This does not lower until the cum-ack passes it */
		asoc->sent_queue_cnt++;
		if ((asoc->peers_rwnd <= 0) &&
		    (asoc->total_flight == 0) &&
		    (bundle_at == 1)) {
			/* Mark the chunk as being a window probe */
			FUNC1(sctps_windowprobed);
		}
#ifdef SCTP_AUDITING_ENABLED
		sctp_audit_log(0xC2, 3);
#endif
		data_list[i]->sent = SCTP_DATAGRAM_SENT;
		data_list[i]->snd_count = 1;
		data_list[i]->rec.data.chunk_was_revoked = 0;
		if (FUNC0(sctp_logging_level) & SCTP_FLIGHT_LOGGING_ENABLE) {
			FUNC13(SCTP_FLIGHT_LOG_UP,
			    data_list[i]->whoTo->flight_size,
			    data_list[i]->book_size,
			    (uint32_t)(uintptr_t)data_list[i]->whoTo,
			    data_list[i]->rec.data.tsn);
		}
		FUNC11(data_list[i]);
		FUNC15(stcb, data_list[i]);
		if (FUNC0(sctp_logging_level) & SCTP_LOG_RWND_ENABLE) {
			FUNC12(SCTP_DECREASE_PEER_RWND,
			    asoc->peers_rwnd, data_list[i]->send_size, FUNC0(sctp_peer_chunk_oh));
		}
		asoc->peers_rwnd = FUNC14(asoc->peers_rwnd,
		    (uint32_t)(data_list[i]->send_size + FUNC0(sctp_peer_chunk_oh)));
		if (asoc->peers_rwnd < stcb->sctp_ep->sctp_ep.sctp_sws_sender) {
			/* SWS sender side engages */
			asoc->peers_rwnd = 0;
		}
	}
	if (asoc->cc_functions.sctp_cwnd_update_packet_transmitted) {
		(*asoc->cc_functions.sctp_cwnd_update_packet_transmitted) (stcb, net);
	}
}