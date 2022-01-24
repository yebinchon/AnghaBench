#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct isp_fc {int loop_seen_once; scalar_t__ loop_down_time; } ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 struct isp_fc* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int ISP_LOGDEBUG0 ; 
 int ISP_LOG_SANCFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(ispsoftc_t *isp, int chan)
{
	struct isp_fc *fc = FUNC0(isp, chan);

	FUNC1(isp, ISP_LOG_SANCFG|ISP_LOGDEBUG0, "Chan %d Loop is up", chan);
	fc->loop_seen_once = 1;
	fc->loop_down_time = 0;
	FUNC2(isp, chan);
}