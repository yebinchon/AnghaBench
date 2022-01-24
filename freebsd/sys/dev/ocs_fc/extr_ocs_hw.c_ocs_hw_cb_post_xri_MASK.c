#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  xri_count; int /*<<< orphan*/  xri_base; } ;
typedef  TYPE_1__ sli4_cmd_post_xri_t ;
struct TYPE_6__ {int /*<<< orphan*/  os; } ;
typedef  TYPE_2__ ocs_hw_t ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t
FUNC3(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void  *arg)
{
	sli4_cmd_post_xri_t	*post_xri = (sli4_cmd_post_xri_t*)mqe;

	/* Reclaim the XRIs as host owned if the command fails */
	if (status != 0) {
		FUNC2(hw->os, "Status 0x%x for XRI base 0x%x, cnt =x%x\n",
			      status, post_xri->xri_base, post_xri->xri_count);
		FUNC1(hw, post_xri->xri_base, post_xri->xri_count);
	}

	FUNC0(hw->os, mqe, SLI4_BMBX_SIZE);
	return 0;
}