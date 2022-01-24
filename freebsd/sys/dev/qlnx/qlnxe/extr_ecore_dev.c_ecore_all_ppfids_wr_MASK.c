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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {TYPE_1__* p_llh_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ num_ppfid; } ;

/* Variables and functions */
 int ECORE_SUCCESS ; 
 int FUNC0 (struct ecore_dev*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC2(struct ecore_hwfn *p_hwfn,
					 struct ecore_ptt *p_ptt, u32 addr,
					 u32 val)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	u8 ppfid, abs_ppfid;
	enum _ecore_status_t rc;

	for (ppfid = 0; ppfid < p_dev->p_llh_info->num_ppfid; ppfid++) {
		rc = FUNC0(p_dev, ppfid, &abs_ppfid);
		if (rc != ECORE_SUCCESS)
			return rc;

		FUNC1(p_hwfn, p_ptt, abs_ppfid, addr, val);
	}

	return ECORE_SUCCESS;
}