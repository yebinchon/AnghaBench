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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 struct ecore_ptt* FUNC3 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*) ; 

__attribute__((used)) static void
FUNC5(qlnx_host_t *ha, struct ecore_hwfn *p_hwfn)
{
        struct ecore_ptt *ptt;
	int ret;

	ptt = FUNC3(p_hwfn);

	if (!ptt) {
                FUNC0(ha, "Can't acquire PTT; re-scheduling\n");
		FUNC1(p_hwfn);
                return;
	}

	ret = FUNC2(p_hwfn, ptt);

	if (ret) {
                FUNC0(ha, "ecore_iov_vf_flr_cleanup failed; re-scheduling\n");
	}
		
	FUNC4(p_hwfn, ptt);

	return;
}