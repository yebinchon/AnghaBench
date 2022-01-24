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
typedef  int u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int ppfid_bitmap; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,int,int) ; 
 int ECORE_NOTIMPL ; 
 int FUNC1 (struct ecore_hwfn*) ; 
 int ECORE_SUCCESS ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*) ; 

__attribute__((used)) static enum _ecore_status_t FUNC3(struct ecore_hwfn *p_hwfn,
						      struct ecore_ptt *p_ptt)
{
	u8 native_ppfid_idx = FUNC1(p_hwfn);
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	enum _ecore_status_t rc;

	rc = FUNC2(p_hwfn, p_ptt);
	if (rc != ECORE_SUCCESS && rc != ECORE_NOTIMPL)
		return rc;
	else if (rc == ECORE_NOTIMPL)
		p_dev->ppfid_bitmap = 0x1 << native_ppfid_idx;

	if (!(p_dev->ppfid_bitmap & (0x1 << native_ppfid_idx))) {
		FUNC0(p_hwfn,
			"Fix the PPFID bitmap to inculde the native PPFID [native_ppfid_idx %hhd, orig_bitmap 0x%hhx]\n",
			native_ppfid_idx, p_dev->ppfid_bitmap);
		p_dev->ppfid_bitmap = 0x1 << native_ppfid_idx;
	}

	return ECORE_SUCCESS;
}