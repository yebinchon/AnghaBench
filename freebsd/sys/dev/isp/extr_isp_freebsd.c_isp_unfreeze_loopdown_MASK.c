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
struct isp_fc {int simqfrozen; int /*<<< orphan*/ * sim; } ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 struct isp_fc* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int SIMQFRZ_LOOPDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(ispsoftc_t *isp, int chan)
{
	struct isp_fc *fc = FUNC0(isp, chan);

	if (fc->sim == NULL)
		return;
	int wasfrozen = fc->simqfrozen & SIMQFRZ_LOOPDOWN;
	fc->simqfrozen &= ~SIMQFRZ_LOOPDOWN;
	if (wasfrozen && fc->simqfrozen == 0) {
		FUNC1(isp, ISP_LOGDEBUG0,
		    "Chan %d Release simq", chan);
		FUNC3(fc->sim, 1);
		FUNC2();
	}
}