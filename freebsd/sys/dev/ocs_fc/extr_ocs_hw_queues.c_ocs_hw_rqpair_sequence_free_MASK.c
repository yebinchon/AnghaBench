#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_2__ ocs_hw_t ;
struct TYPE_12__ {TYPE_1__* header; } ;
typedef  TYPE_3__ ocs_hw_sequence_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;
struct TYPE_10__ {scalar_t__ rqindex; } ;

/* Variables and functions */
 scalar_t__ OCS_HW_RQ_INDEX_DUMMY_HDR ; 
 int /*<<< orphan*/  OCS_HW_RTN_ERROR ; 
 int /*<<< orphan*/  OCS_HW_RTN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

ocs_hw_rtn_e
FUNC3(ocs_hw_t *hw, ocs_hw_sequence_t *seq)
{
	ocs_hw_rtn_e   rc = OCS_HW_RTN_SUCCESS;

	/* Check for auto xfer rdy dummy buffers and call the proper release function. */
	if (seq->header->rqindex == OCS_HW_RQ_INDEX_DUMMY_HDR) {
		return FUNC0(hw, seq);
	}

	/*
	 * Post the data buffer first. Because in RQ pair mode, ringing the
	 * doorbell of the header ring will post the data buffer as well.
	 */
	if (FUNC1(hw, seq)) {
		FUNC2(hw->os, "error writing buffers\n");
		return OCS_HW_RTN_ERROR;
	}

	return rc;
}