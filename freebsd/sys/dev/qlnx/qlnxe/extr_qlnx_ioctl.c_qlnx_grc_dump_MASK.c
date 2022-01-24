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
typedef  scalar_t__ uint32_t ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_5__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_6__ {int* grcdump_size; int grcdump_taken; int /*<<< orphan*/ * grcdump; TYPE_1__ cdev; scalar_t__* grcdump_dwords; } ;
typedef  TYPE_2__ qlnx_host_t ;

/* Variables and functions */
 int DBG_STATUS_OK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ecore_ptt* FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 

int
FUNC6(qlnx_host_t *ha, uint32_t *num_dumped_dwords, int hwfn_index)
{
	int rval = EINVAL;
	struct ecore_hwfn *p_hwfn;
	struct ecore_ptt *p_ptt;

	if (ha->grcdump_dwords[hwfn_index]) {
		/* the grcdump is already available */
		*num_dumped_dwords = ha->grcdump_dwords[hwfn_index];
		return (0);
	}

	FUNC3(FUNC1());

	p_hwfn = &ha->cdev.hwfns[hwfn_index];
	p_ptt = FUNC4(p_hwfn);

	if (!p_ptt) {
		FUNC0(ha,"ecore_ptt_acquire failed\n");
		return (rval);
	}

	if ((rval = FUNC2(p_hwfn, p_ptt,
			ha->grcdump[hwfn_index],
			(ha->grcdump_size[hwfn_index] >> 2),
			num_dumped_dwords)) == DBG_STATUS_OK) {
	 	rval = 0;	
		ha->grcdump_taken = 1;
	} else
		FUNC0(ha,"ecore_dbg_grc_dump failed [%d, 0x%x]\n",
			   hwfn_index, rval);

	FUNC5(p_hwfn, p_ptt);

	return (rval);
}