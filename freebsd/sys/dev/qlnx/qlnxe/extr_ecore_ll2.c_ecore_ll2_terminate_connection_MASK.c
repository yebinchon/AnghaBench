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
typedef  int /*<<< orphan*/  u8 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_3__ {scalar_t__ conn_type; } ;
struct ecore_ll2_info {TYPE_1__ input; } ;
struct ecore_hwfn {TYPE_2__* p_dev; int /*<<< orphan*/  p_ooo_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int /*<<< orphan*/  mf_bits; } ;

/* Variables and functions */
 int ECORE_AGAIN ; 
 int ECORE_INVAL ; 
 scalar_t__ FUNC0 (struct ecore_ll2_info*) ; 
 scalar_t__ FUNC1 (struct ecore_ll2_info*) ; 
 scalar_t__ ECORE_LL2_TYPE_FCOE ; 
 scalar_t__ ECORE_LL2_TYPE_OOO ; 
 int /*<<< orphan*/  ECORE_LLH_FILTER_ETHERTYPE ; 
 int /*<<< orphan*/  ECORE_MF_UFP_SPECIFIC ; 
 int ECORE_NOTIMPL ; 
 int ECORE_SUCCESS ; 
 struct ecore_ll2_info* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ecore_ll2_info* FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ecore_ptt* FUNC8 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC10 (struct ecore_hwfn*,struct ecore_ll2_info*) ; 
 int FUNC11 (struct ecore_hwfn*,struct ecore_ll2_info*) ; 

enum _ecore_status_t FUNC12(void *cxt,
						    u8 connection_handle)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)cxt;
	struct ecore_ll2_info *p_ll2_conn = OSAL_NULL;
	enum _ecore_status_t rc = ECORE_NOTIMPL;
	struct ecore_ptt *p_ptt;

	p_ptt = FUNC8(p_hwfn);
	if (!p_ptt)
		return ECORE_AGAIN;

	p_ll2_conn = FUNC3(p_hwfn, connection_handle);
	if (p_ll2_conn == OSAL_NULL) {
		rc = ECORE_INVAL;
		goto out;
	}

	/* Stop Tx & Rx of connection, if needed */
	if (FUNC1(p_ll2_conn)) {
		rc = FUNC11(p_hwfn, p_ll2_conn);
		if (rc != ECORE_SUCCESS)
			goto out;
		FUNC5(p_hwfn, connection_handle);
	}

	if (FUNC0(p_ll2_conn)) {
		rc = FUNC10(p_hwfn, p_ll2_conn);
		if (rc)
			goto out;
		FUNC4(p_hwfn, connection_handle);
	}

	if (p_ll2_conn->input.conn_type == ECORE_LL2_TYPE_OOO)
		FUNC7(p_hwfn->p_ooo_info);

	if (p_ll2_conn->input.conn_type == ECORE_LL2_TYPE_FCOE) {
		if (!FUNC2(ECORE_MF_UFP_SPECIFIC,
				   &p_hwfn->p_dev->mf_bits))
			FUNC6(p_hwfn->p_dev, 0,
							 ECORE_LLH_FILTER_ETHERTYPE,
							 0x8906, 0);
		FUNC6(p_hwfn->p_dev, 0,
						 ECORE_LLH_FILTER_ETHERTYPE,
						 0x8914, 0);
	}

out:
	FUNC9(p_hwfn, p_ptt);

	return rc;
}