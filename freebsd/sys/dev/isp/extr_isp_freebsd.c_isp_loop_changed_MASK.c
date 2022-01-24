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
struct isp_fc {scalar_t__ loop_down_time; } ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_3__ {int role; } ;
typedef  TYPE_1__ fcparam ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct isp_fc* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int ISP_LOGDEBUG0 ; 
 int ISP_LOG_SANCFG ; 
 int ISP_ROLE_INITIATOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*,int) ; 
 scalar_t__ time_uptime ; 
 int /*<<< orphan*/  FUNC4 (struct isp_fc*) ; 

__attribute__((used)) static void
FUNC5(ispsoftc_t *isp, int chan)
{
	fcparam *fcp = FUNC0(isp, chan);
	struct isp_fc *fc = FUNC1(isp, chan);

	if (fc->loop_down_time)
		return;
	FUNC3(isp, ISP_LOG_SANCFG|ISP_LOGDEBUG0, "Chan %d Loop changed", chan);
	if (fcp->role & ISP_ROLE_INITIATOR)
		FUNC2(isp, chan);
	fc->loop_down_time = time_uptime;
	FUNC4(fc);
}