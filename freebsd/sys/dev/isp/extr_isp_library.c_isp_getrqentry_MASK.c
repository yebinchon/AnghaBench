#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ isp_reqodx; int /*<<< orphan*/  isp_reqidx; int /*<<< orphan*/  isp_rquest; int /*<<< orphan*/  isp_rqstoutrp; } ;
typedef  TYPE_1__ ispsoftc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void *
FUNC4(ispsoftc_t *isp)
{
	uint32_t next;

	next = FUNC0(isp->isp_reqidx, FUNC3(isp));
	if (next == isp->isp_reqodx) {
		isp->isp_reqodx = FUNC2(isp, isp->isp_rqstoutrp);
		if (next == isp->isp_reqodx)
			return (NULL);
	}
	return (FUNC1(isp->isp_rquest, isp->isp_reqidx));
}