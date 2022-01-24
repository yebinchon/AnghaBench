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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ecore_txq_start_ret_params {void* p_handle; int /*<<< orphan*/  p_doorbell; } ;
struct ecore_queue_start_common_params {int dummy; } ;
struct ecore_queue_cid {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ecore_queue_cid* OSAL_NULL ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_queue_cid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_queue_cid*) ; 
 struct ecore_queue_cid* FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int,struct ecore_queue_start_common_params*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_queue_cid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

enum _ecore_status_t
FUNC5(struct ecore_hwfn *p_hwfn, u16 opaque_fid,
			 struct ecore_queue_start_common_params *p_params,
			 u8 tc,
			 dma_addr_t pbl_addr, u16 pbl_size,
			 struct ecore_txq_start_ret_params *p_ret_params)
{
	struct ecore_queue_cid *p_cid;
	enum _ecore_status_t rc;

	p_cid = FUNC3(p_hwfn, opaque_fid, false, p_params);
	if (p_cid == OSAL_NULL)
		return ECORE_INVAL;

	if (FUNC0(p_hwfn->p_dev))
		rc = FUNC1(p_hwfn, p_cid, tc,
						 pbl_addr, pbl_size,
						 &p_ret_params->p_doorbell);
	else
		rc = FUNC4(p_hwfn, p_cid,
					   pbl_addr, pbl_size,
					   &p_ret_params->p_doorbell);

	if (rc != ECORE_SUCCESS)
		FUNC2(p_hwfn, p_cid);
	else
		p_ret_params->p_handle = (void *)p_cid;

	return rc;
}