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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;
typedef  int /*<<< orphan*/  XS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISP_LOGWARN ; 
 int /*<<< orphan*/  SCSI_GOOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(ispsoftc_t *isp, uint32_t fph)
{
	XS_T *xs;

	if (fph == 0) {
		return;
	}
	xs = FUNC6(isp, fph);
	if (xs == NULL) {
		FUNC7(isp, ISP_LOGWARN,
		    "Command for fast post handle 0x%x not found", fph);
		return;
	}
	FUNC4(isp, fph);

	/*
	 * Since we don't have a result queue entry item,
	 * we must believe that SCSI status is zero and
	 * that all data transferred.
	 */
	FUNC1(xs, 0);
	*FUNC2(xs) = SCSI_GOOD;
	if (FUNC3(xs)) {
		FUNC0(isp, xs, fph);
	}
	FUNC5(xs);
}