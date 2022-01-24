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
struct TYPE_4__ {int /*<<< orphan*/  vp_ctrl_fcf_index; int /*<<< orphan*/ * vp_ctrl_reserved; int /*<<< orphan*/ * vp_ctrl_idmap; int /*<<< orphan*/  vp_ctrl_vp_count; int /*<<< orphan*/  vp_ctrl_command; int /*<<< orphan*/  vp_ctrl_status; int /*<<< orphan*/  vp_ctrl_index_fail; int /*<<< orphan*/  vp_ctrl_handle; int /*<<< orphan*/  vp_ctrl_hdr; } ;
typedef  TYPE_1__ vp_ctrl_info_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(ispsoftc_t *isp, vp_ctrl_info_t *src, vp_ctrl_info_t *dst)
{
	int i;
	FUNC3(isp, &src->vp_ctrl_hdr, &dst->vp_ctrl_hdr);
	FUNC2(isp, &src->vp_ctrl_handle, dst->vp_ctrl_handle);
	FUNC1(isp, &src->vp_ctrl_index_fail, dst->vp_ctrl_index_fail);
	FUNC1(isp, &src->vp_ctrl_status, dst->vp_ctrl_status);
	FUNC1(isp, &src->vp_ctrl_command, dst->vp_ctrl_command);
	FUNC1(isp, &src->vp_ctrl_vp_count, dst->vp_ctrl_vp_count);
	for (i = 0; i < FUNC0(src->vp_ctrl_idmap); i++) {
		FUNC1(isp, &src->vp_ctrl_idmap[i], dst->vp_ctrl_idmap[i]);
	}
	for (i = 0; i < FUNC0(src->vp_ctrl_reserved); i++) {
		FUNC1(isp, &src->vp_ctrl_reserved[i], dst->vp_ctrl_reserved[i]);
	}
	FUNC1(isp, &src->vp_ctrl_fcf_index, dst->vp_ctrl_fcf_index);
}