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
struct ecore_rdma_start_in_params {int desired_cnq; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int ECORE_TIMEOUT ; 
 struct ecore_ptt* FUNC1 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*) ; 
 int FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_rdma_start_in_params*) ; 

enum _ecore_status_t FUNC7(void *rdma_cxt,
				struct ecore_rdma_start_in_params *params)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	struct ecore_ptt *p_ptt;
	enum _ecore_status_t rc = ECORE_TIMEOUT;

	FUNC0(p_hwfn, ECORE_MSG_RDMA,
		   "desired_cnq = %08x\n", params->desired_cnq);

	p_ptt = FUNC1(p_hwfn);
	if (!p_ptt)
		goto err;

	rc = FUNC4(p_hwfn);
	if (rc)
		goto err1;

	rc = FUNC6(p_hwfn, p_ptt, params);
	if (rc)
		goto err2;

	FUNC2(p_hwfn, p_ptt);

	FUNC3(p_hwfn);
	return rc;

err2:
	FUNC5(p_hwfn);
err1:
	FUNC2(p_hwfn, p_ptt);
err:
	FUNC0(p_hwfn, ECORE_MSG_RDMA, "RDMA start - error, rc = %d\n", rc);
	return rc;
}