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
typedef  int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {int iwarp_affin; } ;
typedef  enum ecore_eng { ____Placeholder_ecore_eng } ecore_eng ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int,char*,int) ; 
 int ECORE_AGAIN ; 
#define  ECORE_BOTH_ENG 130 
#define  ECORE_ENG0 129 
#define  ECORE_ENG1 128 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_dev*) ; 
 scalar_t__ FUNC2 (struct ecore_hwfn*) ; 
 struct ecore_hwfn* FUNC3 (struct ecore_dev*) ; 
 int ECORE_SUCCESS ; 
 int NIG_REG_PPF_TO_ENGINE_SEL ; 
 int /*<<< orphan*/  NIG_REG_PPF_TO_ENGINE_SEL_NON_ROCE ; 
 struct ecore_ptt* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ecore_dev*,int,int*) ; 
 struct ecore_ptt* FUNC6 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*,int,int) ; 

enum _ecore_status_t FUNC10(struct ecore_dev *p_dev,
						  u8 ppfid, enum ecore_eng eng)
{
	struct ecore_hwfn *p_hwfn = FUNC3(p_dev);
	struct ecore_ptt *p_ptt = FUNC6(p_hwfn);
	u32 addr, val, eng_sel;
	enum _ecore_status_t rc = ECORE_SUCCESS;
	u8 abs_ppfid;

	if (p_ptt == OSAL_NULL)
		return ECORE_AGAIN;

	if (!FUNC1(p_dev))
		goto out;

	rc = FUNC5(p_dev, ppfid, &abs_ppfid);
	if (rc != ECORE_SUCCESS)
		goto out;

	switch (eng) {
	case ECORE_ENG0:
		eng_sel = 0;
		break;
	case ECORE_ENG1:
		eng_sel = 1;
		break;
	case ECORE_BOTH_ENG:
		eng_sel = 2;
		break;
	default:
		FUNC0(p_dev, false,
			  "Invalid affinity value for ppfid [%d]\n", eng);
		rc = ECORE_INVAL;
		goto out;
	}

	addr = NIG_REG_PPF_TO_ENGINE_SEL + abs_ppfid * 0x4;
	val = FUNC8(p_hwfn, p_ptt, addr);
	FUNC4(val, NIG_REG_PPF_TO_ENGINE_SEL_NON_ROCE, eng_sel);
	FUNC9(p_hwfn, p_ptt, addr, val);

	/* The iWARP affinity is set as the affinity of ppfid 0 */
	if (!ppfid && FUNC2(p_hwfn))
		p_dev->iwarp_affin = (eng == ECORE_ENG1) ? 1 : 0;
out:
	FUNC7(p_hwfn, p_ptt);

	return rc;
}