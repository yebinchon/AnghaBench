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
typedef  scalar_t__ uint16_t ;
struct dctcp {int bytes_total; int ece_prev; int bytes_ecn; int /*<<< orphan*/  save_sndnxt; scalar_t__ ece_curr; } ;
struct cc_var {int bytes_this_ack; int /*<<< orphan*/  curack; struct dctcp* cc_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ack_received ) (struct cc_var*,scalar_t__) ;} ;

/* Variables and functions */
 int FUNC0 (struct cc_var*,int /*<<< orphan*/ ) ; 
 scalar_t__ CC_ACK ; 
 scalar_t__ CC_DUPACK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TF_ECN_PERMIT ; 
 int /*<<< orphan*/  FUNC7 (struct cc_var*) ; 
 int FUNC8 (int,int) ; 
 TYPE_1__ newreno_cc_algo ; 
 int /*<<< orphan*/  snd_recover ; 
 int /*<<< orphan*/  FUNC9 (struct cc_var*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct cc_var*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct cc_var*,scalar_t__) ; 
 int /*<<< orphan*/  t_flags ; 
 int /*<<< orphan*/  t_maxseg ; 

__attribute__((used)) static void
FUNC12(struct cc_var *ccv, uint16_t type)
{
	struct dctcp *dctcp_data;
	int bytes_acked = 0;

	dctcp_data = ccv->cc_data;

	if (FUNC0(ccv, t_flags) & TF_ECN_PERMIT) {
		/*
		 * DCTCP doesn't treat receipt of ECN marked packet as a
		 * congestion event. Thus, DCTCP always executes the ACK
		 * processing out of congestion recovery.
		 */
		if (FUNC3(FUNC0(ccv, t_flags))) {
			FUNC2(FUNC0(ccv, t_flags));
			newreno_cc_algo.ack_received(ccv, type);
			FUNC1(FUNC0(ccv, t_flags));
		} else
			newreno_cc_algo.ack_received(ccv, type);

		if (type == CC_DUPACK)
			bytes_acked = FUNC8(ccv->bytes_this_ack, FUNC0(ccv, t_maxseg));

		if (type == CC_ACK)
			bytes_acked = ccv->bytes_this_ack;

		/* Update total bytes. */
		dctcp_data->bytes_total += bytes_acked;

		/* Update total marked bytes. */
		if (dctcp_data->ece_curr) {
			//XXRMS: For fluid-model DCTCP, update
			//cwnd here during for RTT fairness
			if (!dctcp_data->ece_prev
			    && bytes_acked > FUNC0(ccv, t_maxseg)) {
				dctcp_data->bytes_ecn +=
				    (bytes_acked - FUNC0(ccv, t_maxseg));
			} else
				dctcp_data->bytes_ecn += bytes_acked;
			dctcp_data->ece_prev = 1;
		} else {
			if (dctcp_data->ece_prev
			    && bytes_acked > FUNC0(ccv, t_maxseg))
				dctcp_data->bytes_ecn += FUNC0(ccv, t_maxseg);
			dctcp_data->ece_prev = 0;
		}
		dctcp_data->ece_curr = 0;

		/*
		 * Update the fraction of marked bytes at the end of
		 * current window size.
		 */
		if ((FUNC4(FUNC0(ccv, t_flags)) &&
		    FUNC5(ccv->curack, FUNC0(ccv, snd_recover))) ||
		    (!FUNC4(FUNC0(ccv, t_flags)) &&
		    FUNC6(ccv->curack, dctcp_data->save_sndnxt)))
			FUNC7(ccv);
	} else
		newreno_cc_algo.ack_received(ccv, type);
}