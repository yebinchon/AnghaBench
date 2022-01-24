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
typedef  int /*<<< orphan*/  ispsoftc_t ;
struct TYPE_4__ {int /*<<< orphan*/ * abrt_reserved1; int /*<<< orphan*/  abrt_vpidx; int /*<<< orphan*/  abrt_tidhi; int /*<<< orphan*/  abrt_tidlo; int /*<<< orphan*/ * abrt_reserved; int /*<<< orphan*/  abrt_queue_number; int /*<<< orphan*/  abrt_cmd_handle; int /*<<< orphan*/  abrt_options; int /*<<< orphan*/  abrt_nphdl; int /*<<< orphan*/  abrt_handle; int /*<<< orphan*/  abrt_header; } ;
typedef  TYPE_1__ isp24xx_abrt_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC5(ispsoftc_t *isp, isp24xx_abrt_t *src, isp24xx_abrt_t *dst)
{
	int i;
	FUNC4(isp, &src->abrt_header, &dst->abrt_header);
	FUNC2(isp, src->abrt_handle, &dst->abrt_handle);
	FUNC1(isp, src->abrt_nphdl, &dst->abrt_nphdl);
	FUNC1(isp, src->abrt_options, &dst->abrt_options);
	FUNC2(isp, src->abrt_cmd_handle, &dst->abrt_cmd_handle);
	FUNC1(isp, src->abrt_queue_number, &dst->abrt_queue_number);
	for (i = 0; i < FUNC0(src->abrt_reserved); i++) {
		FUNC3(isp, src->abrt_reserved[i], &dst->abrt_reserved[i]);
	}
	FUNC1(isp, src->abrt_tidlo, &dst->abrt_tidlo);
	FUNC3(isp, src->abrt_tidhi, &dst->abrt_tidhi);
	FUNC3(isp, src->abrt_vpidx, &dst->abrt_vpidx);
	for (i = 0; i < FUNC0(src->abrt_reserved1); i++) {
		FUNC3(isp, src->abrt_reserved1[i], &dst->abrt_reserved1[i]);
	}
}