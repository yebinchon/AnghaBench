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
struct ecore_pf_iov {int dummy; } ;
struct ecore_hwfn {struct ecore_pf_iov* pf_iov_info; int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ECORE_MSG_IOV ; 
 int ECORE_NOMEM ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 struct ecore_pf_iov* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ecore_sriov_eqe_event ; 

enum _ecore_status_t FUNC6(struct ecore_hwfn *p_hwfn)
{
	struct ecore_pf_iov *p_sriov;

	if (!FUNC2(p_hwfn)) {
		FUNC1(p_hwfn, ECORE_MSG_IOV,
			   "No SR-IOV - no need for IOV db\n");
		return ECORE_SUCCESS;
	}

	p_sriov = FUNC3(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_sriov));
	if (!p_sriov) {
		FUNC0(p_hwfn, false, "Failed to allocate `struct ecore_sriov'\n");
		return ECORE_NOMEM;
	}

	p_hwfn->pf_iov_info = p_sriov;

	FUNC5(p_hwfn, PROTOCOLID_COMMON,
				    ecore_sriov_eqe_event);

	return FUNC4(p_hwfn);
}