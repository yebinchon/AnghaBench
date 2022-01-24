#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct ecore_hwfn {int abs_pf_id; struct ecore_dev* p_dev; } ;
struct ecore_dev {TYPE_1__* p_iov_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int pos; int offset; void* first_vf_in_pf; int /*<<< orphan*/  total_vfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ECORE_MSG_IOV ; 
 int ECORE_NOMEM ; 
 scalar_t__ FUNC2 (struct ecore_hwfn*) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct ecore_dev*) ; 
 scalar_t__ MAX_NUM_VFS_BB ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_dev*,TYPE_1__*) ; 
 TYPE_1__* OSAL_NULL ; 
 int FUNC5 (struct ecore_dev*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct ecore_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_SRIOV ; 
 int FUNC7 (struct ecore_dev*) ; 

enum _ecore_status_t FUNC8(struct ecore_hwfn *p_hwfn)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	int pos;
	enum _ecore_status_t rc;

	if (FUNC3(p_hwfn->p_dev))
		return ECORE_SUCCESS;

	/* Learn the PCI configuration */
	pos = FUNC5(p_hwfn->p_dev,
					   PCI_EXT_CAP_ID_SRIOV);
	if (!pos) {
		FUNC1(p_hwfn, ECORE_MSG_IOV, "No PCIe IOV support\n");
		return ECORE_SUCCESS;
	}

	/* Allocate a new struct for IOV information */
	/* TODO - can change to VALLOC when its available */
	p_dev->p_iov_info = FUNC6(p_dev, GFP_KERNEL,
					sizeof(*p_dev->p_iov_info));
	if (!p_dev->p_iov_info) {
		FUNC0(p_hwfn, false,
			  "Can't support IOV due to lack of memory\n");
		return ECORE_NOMEM;
	}
	p_dev->p_iov_info->pos = pos;

	rc = FUNC7(p_dev);
	if (rc)
		return rc;

	/* We want PF IOV to be synonemous with the existance of p_iov_info;
	 * In case the capability is published but there are no VFs, simply
	 * de-allocate the struct.
	 */
	if (!p_dev->p_iov_info->total_vfs) {
		FUNC1(p_hwfn, ECORE_MSG_IOV,
			   "IOV capabilities, but no VFs are published\n");
		FUNC4(p_dev, p_dev->p_iov_info);
		p_dev->p_iov_info = OSAL_NULL;
		return ECORE_SUCCESS;
	}

	/* First VF index based on offset is tricky:
	 *  - If ARI is supported [likely], offset - (16 - pf_id) would
	 *    provide the number for eng0. 2nd engine Vfs would begin
	 *    after the first engine's VFs.
	 *  - If !ARI, VFs would start on next device.
	 *    so offset - (256 - pf_id) would provide the number.
	 * Utilize the fact that (256 - pf_id) is achieved only be later
	 * to diffrentiate between the two.
	 */

	if (p_hwfn->p_dev->p_iov_info->offset < (256 - p_hwfn->abs_pf_id)) {
		u32 first = p_hwfn->p_dev->p_iov_info->offset +
			    p_hwfn->abs_pf_id - 16;

		p_dev->p_iov_info->first_vf_in_pf = first;

		if (FUNC2(p_hwfn))
			p_dev->p_iov_info->first_vf_in_pf -= MAX_NUM_VFS_BB;
	} else {
		u32 first = p_hwfn->p_dev->p_iov_info->offset +
			    p_hwfn->abs_pf_id - 256;

		p_dev->p_iov_info->first_vf_in_pf = first;
	}

	FUNC1(p_hwfn, ECORE_MSG_IOV,
		   "First VF in hwfn 0x%08x\n",
		   p_dev->p_iov_info->first_vf_in_pf);

	return ECORE_SUCCESS;
}