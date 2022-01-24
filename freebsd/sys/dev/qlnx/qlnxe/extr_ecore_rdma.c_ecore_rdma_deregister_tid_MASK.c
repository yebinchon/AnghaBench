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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  ECORE_RDMA_DEREGISTER_TIMEOUT_MSEC ; 
 int ECORE_SUCCESS ; 
 int ECORE_TIMEOUT ; 
 int ECORE_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR ; 
 scalar_t__ RDMA_RETURN_NIG_DRAIN_REQ ; 
 scalar_t__ RDMA_RETURN_OK ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 struct ecore_ptt* FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC6 (struct ecore_hwfn*,int /*<<< orphan*/ ,scalar_t__*) ; 

enum _ecore_status_t FUNC7(void	*rdma_cxt,
					       u32	itid)
{
	enum _ecore_status_t                   rc;
	u8                                     fw_ret_code;
	struct ecore_ptt                       *p_ptt;
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;

	/* First attempt */
	rc = FUNC6(p_hwfn, itid, &fw_ret_code);
	if (rc != ECORE_SUCCESS)
		return rc;

	if (fw_ret_code != RDMA_RETURN_NIG_DRAIN_REQ)
		goto done;

	/* Second attempt, after 1msec, if device still holds data.
	 * This can occur since 'destroy QP' returns to the caller rather fast.
	 * The synchronous part of it returns after freeing a few of the
	 * resources but not all of them, allowing the consumer to continue its
	 * flow. All of the resources will be freed after the asynchronous part
	 * of the destroy QP is complete.
	 */
	FUNC2(ECORE_RDMA_DEREGISTER_TIMEOUT_MSEC);
	rc = FUNC6(p_hwfn, itid, &fw_ret_code);
	if (rc != ECORE_SUCCESS)
		return rc;

	if (fw_ret_code != RDMA_RETURN_NIG_DRAIN_REQ)
		goto done;

	/* Third and last attempt, perform NIG drain and resend the ramrod */
	p_ptt = FUNC4(p_hwfn);
	if (!p_ptt)
		return ECORE_TIMEOUT;

	rc = FUNC3(p_hwfn, p_ptt);
	if (rc != ECORE_SUCCESS) {
		FUNC5(p_hwfn, p_ptt);
		return rc;
	}

	FUNC5(p_hwfn, p_ptt);

	rc = FUNC6(p_hwfn, itid, &fw_ret_code);
	if (rc != ECORE_SUCCESS)
		return rc;

done:
	if (fw_ret_code == RDMA_RETURN_OK) {
		FUNC1(p_hwfn, ECORE_MSG_RDMA, "De-registered itid=%d\n",
			   itid);
		return ECORE_SUCCESS;
	} else if (fw_ret_code == RDMA_RETURN_DEREGISTER_MR_BAD_STATE_ERR) {
		/* INTERNAL: This error is returned in case trying to deregister
		 * a MR that is not allocated. We define "allocated" as either:
		 * 1. Registered.
		 * 2. This is an FMR MR type, which is not currently registered
		 *    but can accept FMR WQEs on SQ.
		 */
		FUNC0(p_hwfn, false, "itid=%d, fw_ret_code=%d\n", itid,
			  fw_ret_code);
		return ECORE_INVAL;
	} else { /* fw_ret_code == RDMA_RETURN_NIG_DRAIN_REQ */
		FUNC0(p_hwfn, true,
			  "deregister failed after three attempts. itid=%d, fw_ret_code=%d\n",
			  itid, fw_ret_code);
		return ECORE_UNKNOWN_ERROR;
	}
}