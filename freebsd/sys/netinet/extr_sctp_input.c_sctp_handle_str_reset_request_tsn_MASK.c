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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct sctp_tmit_chunk {int dummy; } ;
struct sctp_association {int str_reset_seq_in; int local_strreset_support; scalar_t__* last_base_tsnsent; int /*<<< orphan*/ * last_sending_seq; int /*<<< orphan*/ * last_reset_action; scalar_t__ mapping_array_base_tsn; int /*<<< orphan*/  sending_seq; int /*<<< orphan*/  mapping_array_size; int /*<<< orphan*/  nr_mapping_array; scalar_t__ highest_tsn_inside_map; scalar_t__ highest_tsn_inside_nr_map; int /*<<< orphan*/  mapping_array; scalar_t__ cumulative_tsn; scalar_t__ tsn_last_delivered; } ;
struct sctp_tcb {struct sctp_association asoc; } ;
struct sctp_stream_reset_tsn_request {int /*<<< orphan*/  request_seq; } ;
struct TYPE_2__ {scalar_t__ chunk_flags; int /*<<< orphan*/  chunk_type; int /*<<< orphan*/  chunk_length; } ;
struct sctp_forward_tsn_chunk {int /*<<< orphan*/  new_cumulative_tsn; TYPE_1__ ch; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SCTP_ENABLE_CHANGE_ASSOC_REQ ; 
 int /*<<< orphan*/  SCTP_FORWARD_CUM_TSN ; 
 int SCTP_MAP_LOGGING_ENABLE ; 
 int /*<<< orphan*/  SCTP_MAP_SLIDE_RESULT ; 
 int /*<<< orphan*/  SCTP_STREAM_RESET_RESULT_DENIED ; 
 int /*<<< orphan*/  SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO ; 
 int /*<<< orphan*/  SCTP_STREAM_RESET_RESULT_PERFORMED ; 
 scalar_t__ SCTP_STREAM_RESET_TSN_DELTA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_tmit_chunk*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_tmit_chunk*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_tcb*,struct sctp_forward_tsn_chunk*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sctp_logging_level ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_tcb*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_tcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_tcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct sctp_tcb *stcb,
    struct sctp_tmit_chunk *chk,
    struct sctp_stream_reset_tsn_request *req)
{
	/* reset all in and out and update the tsn */
	/*
	 * A) reset my str-seq's on in and out. B) Select a receive next,
	 * and set cum-ack to it. Also process this selected number as a
	 * fwd-tsn as well. C) set in the response my next sending seq.
	 */
	struct sctp_forward_tsn_chunk fwdtsn;
	struct sctp_association *asoc = &stcb->asoc;
	int abort_flag = 0;
	uint32_t seq;

	seq = FUNC5(req->request_seq);
	if (asoc->str_reset_seq_in == seq) {
		asoc->last_reset_action[1] = stcb->asoc.last_reset_action[0];
		if (!(asoc->local_strreset_support & SCTP_ENABLE_CHANGE_ASSOC_REQ)) {
			asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_DENIED;
		} else {
			fwdtsn.ch.chunk_length = FUNC3(sizeof(struct sctp_forward_tsn_chunk));
			fwdtsn.ch.chunk_type = SCTP_FORWARD_CUM_TSN;
			fwdtsn.ch.chunk_flags = 0;
			fwdtsn.new_cumulative_tsn = FUNC2(stcb->asoc.highest_tsn_inside_map + 1);
			FUNC8(stcb, &fwdtsn, &abort_flag, NULL, 0);
			if (abort_flag) {
				return (1);
			}
			asoc->highest_tsn_inside_map += SCTP_STREAM_RESET_TSN_DELTA;
			if (FUNC0(sctp_logging_level) & SCTP_MAP_LOGGING_ENABLE) {
				FUNC9(0, 10, asoc->highest_tsn_inside_map, SCTP_MAP_SLIDE_RESULT);
			}
			asoc->tsn_last_delivered = asoc->cumulative_tsn = asoc->highest_tsn_inside_map;
			asoc->mapping_array_base_tsn = asoc->highest_tsn_inside_map + 1;
			FUNC4(asoc->mapping_array, 0, asoc->mapping_array_size);
			asoc->highest_tsn_inside_nr_map = asoc->highest_tsn_inside_map;
			FUNC4(asoc->nr_mapping_array, 0, asoc->mapping_array_size);
			FUNC1(&asoc->sending_seq, 1);
			/* save off historical data for retrans */
			asoc->last_sending_seq[1] = asoc->last_sending_seq[0];
			asoc->last_sending_seq[0] = asoc->sending_seq;
			asoc->last_base_tsnsent[1] = asoc->last_base_tsnsent[0];
			asoc->last_base_tsnsent[0] = asoc->mapping_array_base_tsn;
			FUNC12(stcb, 0, (uint16_t *)NULL);
			FUNC11(stcb, 0, (uint16_t *)NULL);
			asoc->last_reset_action[0] = SCTP_STREAM_RESET_RESULT_PERFORMED;
			FUNC10(stcb, asoc->sending_seq, (asoc->mapping_array_base_tsn + 1), 0);
		}
		FUNC7(chk, seq, asoc->last_reset_action[0],
		    asoc->last_sending_seq[0], asoc->last_base_tsnsent[0]);
		asoc->str_reset_seq_in++;
	} else if (asoc->str_reset_seq_in - 1 == seq) {
		FUNC7(chk, seq, asoc->last_reset_action[0],
		    asoc->last_sending_seq[0], asoc->last_base_tsnsent[0]);
	} else if (asoc->str_reset_seq_in - 2 == seq) {
		FUNC7(chk, seq, asoc->last_reset_action[1],
		    asoc->last_sending_seq[1], asoc->last_base_tsnsent[1]);
	} else {
		FUNC6(chk, seq, SCTP_STREAM_RESET_RESULT_ERR_BAD_SEQNO);
	}
	return (0);
}