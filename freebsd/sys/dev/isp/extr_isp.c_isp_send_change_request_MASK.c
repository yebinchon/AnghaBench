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
struct TYPE_4__ {int* param; } ;
typedef  TYPE_1__ mbreg_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISP_LOGWARN ; 
 int /*<<< orphan*/  MBLOGALL ; 
 int MBOX_COMMAND_COMPLETE ; 
 int /*<<< orphan*/  MBOX_SEND_CHANGE_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int
FUNC3(ispsoftc_t *isp, int chan)
{
	mbreg_t mbs;

	FUNC0(&mbs, MBOX_SEND_CHANGE_REQUEST, MBLOGALL, 500000);
	mbs.param[1] = 0x03;
	mbs.param[9] = chan;
	FUNC1(isp, &mbs);
	if (mbs.param[0] == MBOX_COMMAND_COMPLETE) {
		return (0);
	} else {
		FUNC2(isp, ISP_LOGWARN, "Chan %d Send Change Request: 0x%x",
		    chan, mbs.param[0]);
		return (-1);
	}
}