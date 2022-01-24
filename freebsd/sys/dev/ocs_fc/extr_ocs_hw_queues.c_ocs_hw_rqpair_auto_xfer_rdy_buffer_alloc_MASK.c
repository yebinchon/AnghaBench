#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  auto_xfer_rdy_size; } ;
struct TYPE_16__ {int /*<<< orphan*/  os; TYPE_1__ config; int /*<<< orphan*/ * auto_xfer_rdy_buf_pool; } ;
typedef  TYPE_6__ ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;
struct TYPE_15__ {int /*<<< orphan*/  rqindex; int /*<<< orphan*/  dma; } ;
struct TYPE_13__ {int size; int len; TYPE_7__* alloc; TYPE_2__* virt; } ;
struct TYPE_14__ {TYPE_3__ dma; int /*<<< orphan*/  rqindex; } ;
struct TYPE_12__ {int /*<<< orphan*/  f_ctl; int /*<<< orphan*/  type; int /*<<< orphan*/  r_ctl; int /*<<< orphan*/  info; } ;
struct TYPE_17__ {TYPE_5__ payload; TYPE_4__ header; TYPE_2__ hdr; } ;
typedef  TYPE_7__ ocs_hw_auto_xfer_rdy_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FC_FCTL_END_SEQUENCE ; 
 int FC_FCTL_EXCHANGE_RESPONDER ; 
 int FC_FCTL_FIRST_SEQUENCE ; 
 int FC_FCTL_LAST_SEQUENCE ; 
 int FC_FCTL_SEQUENCE_INITIATIVE ; 
 int /*<<< orphan*/  FC_RCTL_FC4_DATA ; 
 int /*<<< orphan*/  FC_RCTL_INFO_SOL_DATA ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 int /*<<< orphan*/  OCS_HW_RQ_INDEX_DUMMY_DATA ; 
 int /*<<< orphan*/  OCS_HW_RQ_INDEX_DUMMY_HDR ; 
 int /*<<< orphan*/  OCS_HW_RTN_NO_MEMORY ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  OCS_MIN_DMA_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

ocs_hw_rtn_e
FUNC7(ocs_hw_t *hw, uint32_t num_buffers)
{
	ocs_hw_auto_xfer_rdy_buffer_t *buf;
	uint32_t i;

	hw->auto_xfer_rdy_buf_pool = FUNC5(hw->os, sizeof(ocs_hw_auto_xfer_rdy_buffer_t), num_buffers, FALSE);
	if (hw->auto_xfer_rdy_buf_pool == NULL) {
		FUNC4(hw->os, "Failure to allocate auto xfer ready buffer pool\n");
		return OCS_HW_RTN_NO_MEMORY;
	}

	for (i = 0; i < num_buffers; i++) {
		/* allocate the wrapper object */
		buf = FUNC6(hw->auto_xfer_rdy_buf_pool, i);
		FUNC3(buf != NULL);

		/* allocate the auto xfer ready buffer */
		if (FUNC1(hw->os, &buf->payload.dma, hw->config.auto_xfer_rdy_size, OCS_MIN_DMA_ALIGNMENT)) {
			FUNC4(hw->os, "DMA allocation failed\n");
			FUNC2(hw->os, buf, sizeof(*buf));
			return OCS_HW_RTN_NO_MEMORY;
		}

		/* build a fake data header in big endian */
		buf->hdr.info = FC_RCTL_INFO_SOL_DATA;
		buf->hdr.r_ctl = FC_RCTL_FC4_DATA;
		buf->hdr.type = FC_TYPE_FCP;
		buf->hdr.f_ctl = FUNC0(FC_FCTL_EXCHANGE_RESPONDER |
					    FC_FCTL_FIRST_SEQUENCE |
					    FC_FCTL_LAST_SEQUENCE |
					    FC_FCTL_END_SEQUENCE |
					    FC_FCTL_SEQUENCE_INITIATIVE);

		/* build the fake header DMA object */
		buf->header.rqindex = OCS_HW_RQ_INDEX_DUMMY_HDR;
		buf->header.dma.virt = &buf->hdr;
		buf->header.dma.alloc = buf;
		buf->header.dma.size = sizeof(buf->hdr);
		buf->header.dma.len = sizeof(buf->hdr);

		buf->payload.rqindex = OCS_HW_RQ_INDEX_DUMMY_DATA;
	}
	return OCS_HW_RTN_SUCCESS;
}