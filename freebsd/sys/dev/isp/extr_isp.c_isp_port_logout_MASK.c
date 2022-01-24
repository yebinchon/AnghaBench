#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int* param; int ibits; } ;
typedef  TYPE_1__ mbreg_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MBLOGNONE ; 
 int MBOX_COMMAND_COMPLETE ; 
 int /*<<< orphan*/  MBOX_FABRIC_LOGOUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(ispsoftc_t *isp, uint16_t handle, uint32_t portid)
{
	mbreg_t mbs;

	FUNC1(&mbs, MBOX_FABRIC_LOGOUT, MBLOGNONE, 500000);
	if (FUNC0(isp)) {
		mbs.param[1] = handle;
		mbs.ibits = (1 << 10);
	} else {
		mbs.param[1] = handle << 8;
	}
	FUNC2(isp, &mbs);
	return (mbs.param[0] == MBOX_COMMAND_COMPLETE? 0 : mbs.param[0]);
}