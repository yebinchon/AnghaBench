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
struct TYPE_4__ {int /*<<< orphan*/ * mrk_reserved1; int /*<<< orphan*/  mrk_lun; int /*<<< orphan*/  mrk_flags; int /*<<< orphan*/  mrk_modifier; int /*<<< orphan*/  mrk_target; int /*<<< orphan*/  mrk_reserved0; int /*<<< orphan*/  mrk_handle; int /*<<< orphan*/  mrk_header; } ;
typedef  TYPE_1__ isp_marker_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(ispsoftc_t *isp, isp_marker_t *src, isp_marker_t *dst)
{
	int i;
	FUNC5(isp, &src->mrk_header, &dst->mrk_header);
	FUNC2(isp, src->mrk_handle, &dst->mrk_handle);
	if (FUNC4(isp)) {
		FUNC3(isp, src->mrk_reserved0, &dst->mrk_target);
		FUNC3(isp, src->mrk_target, &dst->mrk_reserved0);
	} else {
		FUNC3(isp, src->mrk_reserved0, &dst->mrk_reserved0);
		FUNC3(isp, src->mrk_target, &dst->mrk_target);
	}
	FUNC1(isp, src->mrk_modifier, &dst->mrk_modifier);
	FUNC1(isp, src->mrk_flags, &dst->mrk_flags);
	FUNC1(isp, src->mrk_lun, &dst->mrk_lun);
	for (i = 0; i < FUNC0(src->mrk_reserved1); i++) {
		FUNC3(isp, src->mrk_reserved1[i], &dst->mrk_reserved1[i]);
	}
}