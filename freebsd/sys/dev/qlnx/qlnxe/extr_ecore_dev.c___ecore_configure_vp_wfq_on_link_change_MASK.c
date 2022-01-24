#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {size_t num_vports; TYPE_1__* wfq_data; } ;
struct ecore_hwfn {TYPE_2__ qm_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  min_speed; int /*<<< orphan*/  configured; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC3 (struct ecore_hwfn*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ecore_hwfn *p_hwfn,
						   struct ecore_ptt *p_ptt,
						   u32 min_pf_rate)
{
	bool use_wfq = false;
	int rc = ECORE_SUCCESS;
	u16 i;

	/* Validate all pre configured vports for wfq */
	for (i = 0; i < p_hwfn->qm_info.num_vports; i++) {
		u32 rate;

		if (!p_hwfn->qm_info.wfq_data[i].configured)
			continue;

		rate = p_hwfn->qm_info.wfq_data[i].min_speed;
		use_wfq = true;

		rc = FUNC3(p_hwfn, i, rate, min_pf_rate);
		if (rc != ECORE_SUCCESS) {
			FUNC0(p_hwfn, false,
				  "WFQ validation failed while configuring min rate\n");
			break;
		}
	}

	if (rc == ECORE_SUCCESS && use_wfq)
		FUNC1(p_hwfn, p_ptt, min_pf_rate);
	else
		FUNC2(p_hwfn, p_ptt);

	return rc;
}