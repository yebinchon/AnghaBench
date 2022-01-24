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
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_6__ {TYPE_1__* plogx_ioparm; int /*<<< orphan*/  plogx_rspsz_porthi; int /*<<< orphan*/  plogx_portlo; int /*<<< orphan*/  plogx_vphdl; int /*<<< orphan*/  plogx_flags; int /*<<< orphan*/  plogx_nphdl; int /*<<< orphan*/  plogx_status; int /*<<< orphan*/  plogx_handle; int /*<<< orphan*/  plogx_header; } ;
typedef  TYPE_2__ isp_plogx_t ;
struct TYPE_5__ {int /*<<< orphan*/  hi16; int /*<<< orphan*/  lo16; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(ispsoftc_t *isp, isp_plogx_t *src, isp_plogx_t *dst)
{
	int i;
	FUNC2(isp, &src->plogx_header, &dst->plogx_header);
	FUNC1(isp, src->plogx_handle, &dst->plogx_handle);
	FUNC0(isp, src->plogx_status, &dst->plogx_status);
	FUNC0(isp, src->plogx_nphdl, &dst->plogx_nphdl);
	FUNC0(isp, src->plogx_flags, &dst->plogx_flags);
	FUNC0(isp, src->plogx_vphdl, &dst->plogx_vphdl);
	FUNC0(isp, src->plogx_portlo, &dst->plogx_portlo);
	FUNC0(isp, src->plogx_rspsz_porthi, &dst->plogx_rspsz_porthi);
	for (i = 0; i < 11; i++) {
		FUNC0(isp, src->plogx_ioparm[i].lo16, &dst->plogx_ioparm[i].lo16);
		FUNC0(isp, src->plogx_ioparm[i].hi16, &dst->plogx_ioparm[i].hi16);
	}
}