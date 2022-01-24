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
struct TYPE_8__ {TYPE_1__* isp_devparam; int /*<<< orphan*/  isp_max_queue_depth; int /*<<< orphan*/  isp_selection_timeout; void* isp_cmd_dma_burst_enable; void* isp_data_dma_burst_enabl; int /*<<< orphan*/  isp_data_line_active_neg; int /*<<< orphan*/  isp_req_ack_active_neg; int /*<<< orphan*/  isp_async_data_setup; int /*<<< orphan*/  isp_retry_delay; int /*<<< orphan*/  isp_retry_count; int /*<<< orphan*/  isp_bus_reset_delay; int /*<<< orphan*/  isp_initiator_id; int /*<<< orphan*/  isp_fifo_threshold; } ;
typedef  TYPE_2__ sdparam ;
struct TYPE_9__ {int isp_confopts; } ;
typedef  TYPE_3__ ispsoftc_t ;
struct TYPE_7__ {int /*<<< orphan*/  nvrm_flags; int /*<<< orphan*/  goal_flags; int /*<<< orphan*/  nvrm_period; int /*<<< orphan*/  goal_period; int /*<<< orphan*/  nvrm_offset; int /*<<< orphan*/  goal_offset; scalar_t__ actv_flags; int /*<<< orphan*/  exc_throttle; int /*<<< orphan*/  dev_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPARM_ARQ ; 
 int /*<<< orphan*/  DPARM_DISC ; 
 int /*<<< orphan*/  DPARM_PARITY ; 
 int /*<<< orphan*/  DPARM_RENEG ; 
 int /*<<< orphan*/  DPARM_SYNC ; 
 int /*<<< orphan*/  DPARM_TQING ; 
 int /*<<< orphan*/  DPARM_WIDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int,int) ; 
 int ISP_CFG_OWNLOOPID ; 
 int MAX_TARGETS ; 
 TYPE_2__* FUNC21 (TYPE_3__*,int) ; 

__attribute__((used)) static void
FUNC22(ispsoftc_t *isp, int bus, uint8_t *nvram_data)
{
	sdparam *sdp = FUNC21(isp, bus);
	int tgt;

	sdp->isp_fifo_threshold =
	    FUNC6(nvram_data);

	if ((isp->isp_confopts & ISP_CFG_OWNLOOPID) == 0)
		sdp->isp_initiator_id = FUNC7(nvram_data, bus);

	sdp->isp_bus_reset_delay =
	    FUNC2(nvram_data, bus);

	sdp->isp_retry_count =
	    FUNC3(nvram_data, bus);

	sdp->isp_retry_delay =
	    FUNC4(nvram_data, bus);

	sdp->isp_async_data_setup =
	    FUNC0(nvram_data, bus);

	sdp->isp_req_ack_active_neg =
	    FUNC9(nvram_data, bus);

	sdp->isp_data_line_active_neg =
	    FUNC5(nvram_data, bus);

	sdp->isp_data_dma_burst_enabl =
	    FUNC1(nvram_data);

	sdp->isp_cmd_dma_burst_enable =
	    FUNC1(nvram_data);

	sdp->isp_selection_timeout =
	    FUNC10(nvram_data, bus);

	sdp->isp_max_queue_depth =
	     FUNC8(nvram_data, bus);

	for (tgt = 0; tgt < MAX_TARGETS; tgt++) {
		sdp->isp_devparam[tgt].dev_enable =
		    FUNC11(nvram_data, tgt, bus);
		sdp->isp_devparam[tgt].exc_throttle =
			FUNC13(nvram_data, tgt, bus);
		sdp->isp_devparam[tgt].nvrm_offset =
			FUNC17(nvram_data, tgt, bus);
		sdp->isp_devparam[tgt].nvrm_period =
			FUNC18(nvram_data, tgt, bus);
		sdp->isp_devparam[tgt].nvrm_flags = 0;
		if (FUNC15(nvram_data, tgt, bus))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_RENEG;
		sdp->isp_devparam[tgt].nvrm_flags |= DPARM_ARQ;
		if (FUNC19(nvram_data, tgt, bus))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_TQING;
		if (FUNC16(nvram_data, tgt, bus))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_SYNC;
		if (FUNC20(nvram_data, tgt, bus))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_WIDE;
		if (FUNC14(nvram_data, tgt, bus))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_PARITY;
		if (FUNC12(nvram_data, tgt, bus))
			sdp->isp_devparam[tgt].nvrm_flags |= DPARM_DISC;
		sdp->isp_devparam[tgt].actv_flags = 0;
		sdp->isp_devparam[tgt].goal_offset =
		    sdp->isp_devparam[tgt].nvrm_offset;
		sdp->isp_devparam[tgt].goal_period =
		    sdp->isp_devparam[tgt].nvrm_period;
		sdp->isp_devparam[tgt].goal_flags =
		    sdp->isp_devparam[tgt].nvrm_flags;
	}
}