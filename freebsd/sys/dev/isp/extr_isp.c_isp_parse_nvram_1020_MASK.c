#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int isp_fifo_threshold; int isp_async_data_setup; TYPE_1__* isp_devparam; int /*<<< orphan*/  isp_fast_mttr; int /*<<< orphan*/  isp_max_queue_depth; int /*<<< orphan*/  isp_selection_timeout; int /*<<< orphan*/  isp_tag_aging; int /*<<< orphan*/  isp_cmd_dma_burst_enable; int /*<<< orphan*/  isp_data_dma_burst_enabl; int /*<<< orphan*/  isp_data_line_active_neg; int /*<<< orphan*/  isp_req_ack_active_neg; int /*<<< orphan*/  isp_retry_delay; int /*<<< orphan*/  isp_retry_count; int /*<<< orphan*/  isp_bus_reset_delay; int /*<<< orphan*/  isp_initiator_id; } ;
typedef  TYPE_2__ sdparam ;
struct TYPE_9__ {int isp_confopts; scalar_t__ isp_type; } ;
typedef  TYPE_3__ ispsoftc_t ;
struct TYPE_7__ {int nvrm_offset; int nvrm_period; int goal_offset; int goal_period; int /*<<< orphan*/  nvrm_flags; int /*<<< orphan*/  goal_flags; scalar_t__ actv_flags; int /*<<< orphan*/  exc_throttle; int /*<<< orphan*/  dev_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPARM_ARQ ; 
 int /*<<< orphan*/  DPARM_DISC ; 
 int /*<<< orphan*/  DPARM_PARITY ; 
 int /*<<< orphan*/  DPARM_RENEG ; 
 int /*<<< orphan*/  DPARM_SYNC ; 
 int /*<<< orphan*/  DPARM_TQING ; 
 int /*<<< orphan*/  DPARM_WIDE ; 
 int ISP_CFG_OWNLOOPID ; 
 scalar_t__ ISP_HA_SCSI_1040 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int) ; 
 int FUNC21 (int /*<<< orphan*/ *,int) ; 
 int FUNC22 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int) ; 
 int MAX_TARGETS ; 
 TYPE_2__* FUNC25 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC26(ispsoftc_t *isp, uint8_t *nvram_data)
{
	sdparam *sdp = FUNC25(isp, 0);
	int tgt;

	sdp->isp_fifo_threshold =
		FUNC8(nvram_data) |
		(FUNC9(nvram_data) << 2);

	if ((isp->isp_confopts & ISP_CFG_OWNLOOPID) == 0)
		sdp->isp_initiator_id = FUNC10(nvram_data);

	sdp->isp_bus_reset_delay =
		FUNC1(nvram_data);

	sdp->isp_retry_count =
		FUNC2(nvram_data);

	sdp->isp_retry_delay =
		FUNC3(nvram_data);

	sdp->isp_async_data_setup =
		FUNC0(nvram_data);

	if (isp->isp_type >= ISP_HA_SCSI_1040) {
		if (sdp->isp_async_data_setup < 9) {
			sdp->isp_async_data_setup = 9;
		}
	} else {
		if (sdp->isp_async_data_setup != 6) {
			sdp->isp_async_data_setup = 6;
		}
	}

	sdp->isp_req_ack_active_neg =
		FUNC12(nvram_data);

	sdp->isp_data_line_active_neg =
		FUNC6(nvram_data);

	sdp->isp_data_dma_burst_enabl =
		FUNC5(nvram_data);

	sdp->isp_cmd_dma_burst_enable =
		FUNC4(nvram_data);

	sdp->isp_tag_aging =
		FUNC14(nvram_data);

	sdp->isp_selection_timeout =
		FUNC13(nvram_data);

	sdp->isp_max_queue_depth =
		FUNC11(nvram_data);

	sdp->isp_fast_mttr = FUNC7(nvram_data);

	for (tgt = 0; tgt < MAX_TARGETS; tgt++) {
		sdp->isp_devparam[tgt].dev_enable =
			FUNC15(nvram_data, tgt);
		sdp->isp_devparam[tgt].exc_throttle =
			FUNC17(nvram_data, tgt);
		sdp->isp_devparam[tgt].nvrm_offset =
			FUNC21(nvram_data, tgt);
		sdp->isp_devparam[tgt].nvrm_period =
			FUNC22(nvram_data, tgt);
		/*
		 * We probably shouldn't lie about this, but it
		 * it makes it much safer if we limit NVRAM values
		 * to sanity.
		 */
		if (isp->isp_type < ISP_HA_SCSI_1040) {
			/*
			 * If we're not ultra, we can't possibly
			 * be a shorter period than this.
			 */
			if (sdp->isp_devparam[tgt].nvrm_period < 0x19) {
				sdp->isp_devparam[tgt].nvrm_period = 0x19;
			}
			if (sdp->isp_devparam[tgt].nvrm_offset > 0xc) {
				sdp->isp_devparam[tgt].nvrm_offset = 0x0c;
			}
		} else {
			if (sdp->isp_devparam[tgt].nvrm_offset > 0x8) {
				sdp->isp_devparam[tgt].nvrm_offset = 0x8;
			}
		}
		sdp->isp_devparam[tgt].nvrm_flags = 0;
		if (FUNC19(nvram_data, tgt))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_RENEG;
		sdp->isp_devparam[tgt].nvrm_flags |= DPARM_ARQ;
		if (FUNC23(nvram_data, tgt))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_TQING;
		if (FUNC20(nvram_data, tgt))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_SYNC;
		if (FUNC24(nvram_data, tgt))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_WIDE;
		if (FUNC18(nvram_data, tgt))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_PARITY;
		if (FUNC16(nvram_data, tgt))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_DISC;
		sdp->isp_devparam[tgt].actv_flags = 0; /* we don't know */
		sdp->isp_devparam[tgt].goal_offset =
		    sdp->isp_devparam[tgt].nvrm_offset;
		sdp->isp_devparam[tgt].goal_period =
		    sdp->isp_devparam[tgt].nvrm_period;
		sdp->isp_devparam[tgt].goal_flags =
		    sdp->isp_devparam[tgt].nvrm_flags;
	}
}