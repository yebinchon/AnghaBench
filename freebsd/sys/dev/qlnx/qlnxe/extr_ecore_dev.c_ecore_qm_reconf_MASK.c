#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ecore_qm_info {int /*<<< orphan*/  num_pqs; int /*<<< orphan*/  start_pq; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_mode; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int /*<<< orphan*/  rel_pf_id; struct ecore_qm_info qm_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PHASE_QM_PF ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qm_lock ; 

enum _ecore_status_t FUNC7(struct ecore_hwfn *p_hwfn,
				     struct ecore_ptt *p_ptt)
{
	struct ecore_qm_info *qm_info = &p_hwfn->qm_info;
	bool b_rc;
	enum _ecore_status_t rc;

	/* initialize ecore's qm data structure */
	FUNC3(p_hwfn);

	/* stop PF's qm queues */
	FUNC0(&qm_lock);
	b_rc = FUNC6(p_hwfn, p_ptt, false, true,
				      qm_info->start_pq, qm_info->num_pqs);
	FUNC1(&qm_lock);
	if (!b_rc)
		return ECORE_INVAL;

	/* clear the QM_PF runtime phase leftovers from previous init */
	FUNC2(p_hwfn);

	/* prepare QM portion of runtime array */
	FUNC5(p_hwfn, p_ptt, false);

	/* activate init tool on runtime array */
	rc = FUNC4(p_hwfn, p_ptt, PHASE_QM_PF, p_hwfn->rel_pf_id,
			    p_hwfn->hw_info.hw_mode);
	if (rc != ECORE_SUCCESS)
		return rc;

	/* start PF's qm queues */
	FUNC0(&qm_lock);
	b_rc = FUNC6(p_hwfn, p_ptt, true, true,
				      qm_info->start_pq, qm_info->num_pqs);
	FUNC1(&qm_lock);
	if (!b_rc)
		return ECORE_INVAL;

	return ECORE_SUCCESS;
}