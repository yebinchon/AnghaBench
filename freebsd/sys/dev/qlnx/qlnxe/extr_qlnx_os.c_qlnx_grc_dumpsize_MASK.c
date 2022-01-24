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
typedef  int /*<<< orphan*/  uint32_t ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_5__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_6__ {TYPE_1__ cdev; } ;
typedef  TYPE_2__ qlnx_host_t ;

/* Variables and functions */
 int DBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ecore_ptt* FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 

__attribute__((used)) static int
FUNC6(qlnx_host_t *ha, uint32_t *num_dwords, int hwfn_index)
{
	int			rval = -1;
	struct ecore_hwfn	*p_hwfn;
	struct ecore_ptt	*p_ptt;

	FUNC3(FUNC1());

	p_hwfn = &ha->cdev.hwfns[hwfn_index];
	p_ptt = FUNC4(p_hwfn);

        if (!p_ptt) {
		FUNC0(ha, "ecore_ptt_acquire failed\n");
                return (rval);
        }

        rval = FUNC2(p_hwfn, p_ptt, num_dwords);

	if (rval == DBG_STATUS_OK)
                rval = 0;
        else {
		FUNC0(ha, "ecore_dbg_grc_get_dump_buf_size failed"
			"[0x%x]\n", rval);
	}

        FUNC5(p_hwfn, p_ptt);

        return (rval);
}