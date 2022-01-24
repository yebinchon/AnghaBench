#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_3__ {int isp_fwstate; } ;
typedef  TYPE_1__ fcparam ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int ISP_LOGCONFIG ; 
 int ISP_LOG_SANCFG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ispsoftc_t *isp, int chan, int state)
{
	fcparam *fcp = FUNC0(isp, chan);

	if (fcp->isp_fwstate == state)
		return;
	FUNC2(isp, ISP_LOGCONFIG|ISP_LOG_SANCFG,
	    "Chan %d Firmware state <%s->%s>", chan,
	    FUNC1(fcp->isp_fwstate), FUNC1(state));
	fcp->isp_fwstate = state;
}