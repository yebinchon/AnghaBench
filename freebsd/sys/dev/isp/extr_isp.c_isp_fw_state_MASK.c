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
struct TYPE_4__ {scalar_t__* param; } ;
typedef  TYPE_1__ mbreg_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 int FW_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MBLOGALL ; 
 scalar_t__ MBOX_COMMAND_COMPLETE ; 
 int /*<<< orphan*/  MBOX_GET_FW_STATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(ispsoftc_t *isp, int chan)
{
	if (FUNC0(isp)) {
		mbreg_t mbs;

		FUNC1(&mbs, MBOX_GET_FW_STATE, MBLOGALL, 0);
		FUNC2(isp, &mbs);
		if (mbs.param[0] == MBOX_COMMAND_COMPLETE) {
			return (mbs.param[1]);
		}
	}
	return (FW_ERROR);
}