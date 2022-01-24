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
struct ecore_rdma_start_in_params {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC1 (struct ecore_hwfn*) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_rdma_start_in_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_rdma_start_in_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_rdma_start_in_params*) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*) ; 
 int FUNC7 (struct ecore_hwfn*) ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_rdma_start_in_params*) ; 
 int FUNC9 (struct ecore_hwfn*) ; 

__attribute__((used)) static enum _ecore_status_t FUNC10(struct ecore_hwfn    *p_hwfn,
				struct ecore_ptt                  *p_ptt,
				struct ecore_rdma_start_in_params *params)
{
	enum _ecore_status_t rc = 0;

	FUNC0(p_hwfn, ECORE_MSG_RDMA, "RDMA setup\n");

	FUNC3(p_hwfn, params);
	FUNC6(p_hwfn);
	FUNC4(p_hwfn, params);

	rc = FUNC7(p_hwfn);
	if (rc != ECORE_SUCCESS)
		return rc;

	rc = FUNC5(p_hwfn, p_ptt);
	if (rc != ECORE_SUCCESS)
		return rc;

	if (FUNC1(p_hwfn)) {
		rc = FUNC2(p_hwfn, params);
		if (rc != ECORE_SUCCESS)
			return rc;
	} else {
		rc = FUNC9(p_hwfn);
		if (rc != ECORE_SUCCESS)
			return rc;
	}

	return FUNC8(p_hwfn, p_ptt, params);
}