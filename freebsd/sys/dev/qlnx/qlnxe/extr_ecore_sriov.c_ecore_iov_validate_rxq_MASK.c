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
typedef  scalar_t__ u16 ;
struct ecore_vf_info {scalar_t__ num_rxqs; int /*<<< orphan*/  abs_vf_id; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum ecore_iov_validate_q_mode { ____Placeholder_ecore_iov_validate_q_mode } ecore_iov_validate_q_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ECORE_MSG_IOV ; 
 int FUNC1 (struct ecore_vf_info*,scalar_t__,int,int) ; 

__attribute__((used)) static bool FUNC2(struct ecore_hwfn *p_hwfn,
				   struct ecore_vf_info *p_vf,
				   u16 rx_qid,
				   enum ecore_iov_validate_q_mode mode)
{
	if (rx_qid >= p_vf->num_rxqs) {
		FUNC0(p_hwfn, ECORE_MSG_IOV,
			   "VF[0x%02x] - can't touch Rx queue[%04x]; Only 0x%04x are allocated\n",
			   p_vf->abs_vf_id, rx_qid, p_vf->num_rxqs);
		return false;
	}

	return FUNC1(p_vf, rx_qid, mode, false);
}