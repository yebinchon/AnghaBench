#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_19__ {int isp_retry_count; int isp_retry_delay; int isp_async_data_setup; int isp_req_ack_active_neg; int isp_data_line_active_neg; int isp_tag_aging; int isp_selection_timeout; scalar_t__ isp_fast_mttr; } ;
typedef  TYPE_1__ sdparam ;
struct TYPE_20__ {int* param; } ;
typedef  TYPE_2__ mbreg_t ;
struct TYPE_21__ {int isp_residx; int isp_resodx; int isp_reqidx; int isp_reqodx; int /*<<< orphan*/  isp_state; int /*<<< orphan*/  isp_rquest_dma; int /*<<< orphan*/  isp_result_dma; } ;
typedef  TYPE_3__ ispsoftc_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FW_FEATURE_FAST_POST ; 
 int FW_FEATURE_LVD_NOTIFY ; 
 int FW_FEATURE_RIO_32BIT ; 
 int /*<<< orphan*/  ISP_INITSTATE ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 int /*<<< orphan*/  ISP_LOGINFO ; 
 int /*<<< orphan*/  ISP_RUNSTATE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  MBLOGALL ; 
 int /*<<< orphan*/  MBLOGNONE ; 
 int MBOX_COMMAND_COMPLETE ; 
 int /*<<< orphan*/  MBOX_INIT_REQ_QUEUE ; 
 int /*<<< orphan*/  MBOX_INIT_REQ_QUEUE_A64 ; 
 int /*<<< orphan*/  MBOX_INIT_RES_QUEUE ; 
 int /*<<< orphan*/  MBOX_INIT_RES_QUEUE_A64 ; 
 int /*<<< orphan*/  MBOX_SET_ACT_NEG_STATE ; 
 int /*<<< orphan*/  MBOX_SET_ASYNC_DATA_SETUP_TIME ; 
 int /*<<< orphan*/  MBOX_SET_FW_FEATURES ; 
 int /*<<< orphan*/  MBOX_SET_RETRY_COUNT ; 
 int /*<<< orphan*/  MBOX_SET_SELECT_TIMEOUT ; 
 int /*<<< orphan*/  MBOX_SET_TAG_AGE_LIMIT ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  RISC_MTR ; 
 void* FUNC11 (TYPE_3__*) ; 
 TYPE_1__* FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC16(ispsoftc_t *isp)
{
	sdparam *sdp_chan0, *sdp_chan1;
	mbreg_t mbs;

	isp->isp_state = ISP_INITSTATE;

	sdp_chan0 = FUNC12(isp, 0);
	sdp_chan1 = sdp_chan0;
	if (FUNC6(isp)) {
		sdp_chan1 = FUNC12(isp, 1);
	}

	/* First do overall per-card settings. */

	/*
	 * If we have fast memory timing enabled, turn it on.
	 */
	if (sdp_chan0->isp_fast_mttr) {
		FUNC4(isp, RISC_MTR, 0x1313);
	}

	/*
	 * Set Retry Delay and Count.
	 * You set both channels at the same time.
	 */
	FUNC9(&mbs, MBOX_SET_RETRY_COUNT, MBLOGALL, 0);
	mbs.param[1] = sdp_chan0->isp_retry_count;
	mbs.param[2] = sdp_chan0->isp_retry_delay;
	mbs.param[6] = sdp_chan1->isp_retry_count;
	mbs.param[7] = sdp_chan1->isp_retry_delay;
	FUNC13(isp, &mbs);
	if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
		return;
	}

	/*
	 * Set ASYNC DATA SETUP time. This is very important.
	 */
	FUNC9(&mbs, MBOX_SET_ASYNC_DATA_SETUP_TIME, MBLOGALL, 0);
	mbs.param[1] = sdp_chan0->isp_async_data_setup;
	mbs.param[2] = sdp_chan1->isp_async_data_setup;
	FUNC13(isp, &mbs);
	if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
		return;
	}

	/*
	 * Set ACTIVE Negation State.
	 */
	FUNC9(&mbs, MBOX_SET_ACT_NEG_STATE, MBLOGNONE, 0);
	mbs.param[1] =
	    (sdp_chan0->isp_req_ack_active_neg << 4) |
	    (sdp_chan0->isp_data_line_active_neg << 5);
	mbs.param[2] =
	    (sdp_chan1->isp_req_ack_active_neg << 4) |
	    (sdp_chan1->isp_data_line_active_neg << 5);
	FUNC13(isp, &mbs);
	if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
		FUNC14(isp, ISP_LOGERR,
		    "failed to set active negation state (%d,%d), (%d,%d)",
		    sdp_chan0->isp_req_ack_active_neg,
		    sdp_chan0->isp_data_line_active_neg,
		    sdp_chan1->isp_req_ack_active_neg,
		    sdp_chan1->isp_data_line_active_neg);
		/*
		 * But don't return.
		 */
	}

	/*
	 * Set the Tag Aging limit
	 */
	FUNC9(&mbs, MBOX_SET_TAG_AGE_LIMIT, MBLOGALL, 0);
	mbs.param[1] = sdp_chan0->isp_tag_aging;
	mbs.param[2] = sdp_chan1->isp_tag_aging;
	FUNC13(isp, &mbs);
	if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
		FUNC14(isp, ISP_LOGERR, "failed to set tag age limit (%d,%d)",
		    sdp_chan0->isp_tag_aging, sdp_chan1->isp_tag_aging);
		return;
	}

	/*
	 * Set selection timeout.
	 */
	FUNC9(&mbs, MBOX_SET_SELECT_TIMEOUT, MBLOGALL, 0);
	mbs.param[1] = sdp_chan0->isp_selection_timeout;
	mbs.param[2] = sdp_chan1->isp_selection_timeout;
	FUNC13(isp, &mbs);
	if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
		return;
	}

	/* now do per-channel settings */
	FUNC15(isp, 0);
	if (FUNC6(isp))
		FUNC15(isp, 1);

	/*
	 * Now enable request/response queues
	 */

	if (FUNC7(isp) || FUNC5(isp)) {
		FUNC9(&mbs, MBOX_INIT_RES_QUEUE_A64, MBLOGALL, 0);
		mbs.param[1] = FUNC10(isp);
		mbs.param[2] = FUNC1(isp->isp_result_dma);
		mbs.param[3] = FUNC0(isp->isp_result_dma);
		mbs.param[4] = 0;
		mbs.param[6] = FUNC3(isp->isp_result_dma);
		mbs.param[7] = FUNC2(isp->isp_result_dma);
		FUNC13(isp, &mbs);
		if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
			return;
		}
		isp->isp_residx = isp->isp_resodx = mbs.param[5];

		FUNC9(&mbs, MBOX_INIT_REQ_QUEUE_A64, MBLOGALL, 0);
		mbs.param[1] = FUNC11(isp);
		mbs.param[2] = FUNC1(isp->isp_rquest_dma);
		mbs.param[3] = FUNC0(isp->isp_rquest_dma);
		mbs.param[5] = 0;
		mbs.param[6] = FUNC3(isp->isp_result_dma);
		mbs.param[7] = FUNC2(isp->isp_result_dma);
		FUNC13(isp, &mbs);
		if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
			return;
		}
		isp->isp_reqidx = isp->isp_reqodx = mbs.param[4];
	} else {
		FUNC9(&mbs, MBOX_INIT_RES_QUEUE, MBLOGALL, 0);
		mbs.param[1] = FUNC10(isp);
		mbs.param[2] = FUNC1(isp->isp_result_dma);
		mbs.param[3] = FUNC0(isp->isp_result_dma);
		mbs.param[4] = 0;
		FUNC13(isp, &mbs);
		if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
			return;
		}
		isp->isp_residx = isp->isp_resodx = mbs.param[5];

		FUNC9(&mbs, MBOX_INIT_REQ_QUEUE, MBLOGALL, 0);
		mbs.param[1] = FUNC11(isp);
		mbs.param[2] = FUNC1(isp->isp_rquest_dma);
		mbs.param[3] = FUNC0(isp->isp_rquest_dma);
		mbs.param[5] = 0;
		FUNC13(isp, &mbs);
		if (mbs.param[0] != MBOX_COMMAND_COMPLETE) {
			return;
		}
		isp->isp_reqidx = isp->isp_reqodx = mbs.param[4];
	}

	/*
	 * Turn on LVD transitions for ULTRA2 or better and other features
	 *
	 * Now that we have 32 bit handles, don't do any fast posting
	 * any more. For Ultra2/Ultra3 cards, we can turn on 32 bit RIO
	 * operation or use fast posting. To be conservative, we'll only
	 * do this for Ultra3 cards now because the other cards are so
	 * rare for this author to find and test with.
	 */

	FUNC9(&mbs, MBOX_SET_FW_FEATURES, MBLOGALL, 0);
	if (FUNC7(isp))
		mbs.param[1] |= FW_FEATURE_LVD_NOTIFY;
#ifdef	ISP_NO_RIO
	if (IS_ULTRA3(isp))
		mbs.param[1] |= FW_FEATURE_FAST_POST;
#else
	if (FUNC8(isp))
		mbs.param[1] |= FW_FEATURE_RIO_32BIT;
#endif
	if (mbs.param[1] != 0) {
		uint16_t sfeat = mbs.param[1];
		FUNC13(isp, &mbs);
		if (mbs.param[0] == MBOX_COMMAND_COMPLETE) {
			FUNC14(isp, ISP_LOGINFO,
			    "Enabled FW features (0x%x)", sfeat);
		}
	}

	isp->isp_state = ISP_RUNSTATE;
}