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
typedef  void* u16 ;
struct ecore_queue_cid {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {void* tx_coalesce_usecs; void* rx_coalesce_usecs; } ;

/* Variables and functions */
 int ECORE_AGAIN ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 struct ecore_ptt* FUNC1 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,void*,struct ecore_queue_cid*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,void*,struct ecore_queue_cid*) ; 
 int FUNC5 (struct ecore_hwfn*,void*,void*,struct ecore_queue_cid*) ; 

enum _ecore_status_t FUNC6(struct ecore_hwfn *p_hwfn,
					      u16 rx_coal, u16 tx_coal,
					      void *p_handle)
{
	struct ecore_queue_cid *p_cid = (struct ecore_queue_cid *)p_handle;
	enum _ecore_status_t rc = ECORE_SUCCESS;
	struct ecore_ptt *p_ptt;

	/* TODO - Configuring a single queue's coalescing but
	 * claiming all queues are abiding same configuration
	 * for PF and VF both.
	 */

#ifdef CONFIG_ECORE_SRIOV
	if (IS_VF(p_hwfn->p_dev))
		return ecore_vf_pf_set_coalesce(p_hwfn, rx_coal,
						tx_coal, p_cid);
#endif /* #ifdef CONFIG_ECORE_SRIOV */

	p_ptt = FUNC1(p_hwfn);
	if (!p_ptt)
		return ECORE_AGAIN;

	if (rx_coal) {
		rc = FUNC3(p_hwfn, p_ptt, rx_coal, p_cid);
		if (rc)
			goto out;
		p_hwfn->p_dev->rx_coalesce_usecs = rx_coal;
	}

	if (tx_coal) {
		rc = FUNC4(p_hwfn, p_ptt, tx_coal, p_cid);
		if (rc)
			goto out;
		p_hwfn->p_dev->tx_coalesce_usecs = tx_coal;
	}
out:
	FUNC2(p_hwfn, p_ptt);

	return rc;
}