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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {TYPE_1__* p_llh_info; } ;
typedef  enum ecore_eng { ____Placeholder_ecore_eng } ecore_eng ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ num_ppfid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int ECORE_BOTH_ENG ; 
 int ECORE_ENG0 ; 
 scalar_t__ FUNC2 (struct ecore_hwfn*) ; 
 scalar_t__ FUNC3 (struct ecore_hwfn*) ; 
 scalar_t__ FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  ECORE_MSG_SP ; 
 int ECORE_SUCCESS ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC6 (struct ecore_dev*,scalar_t__,int) ; 
 int FUNC7 (struct ecore_dev*,int) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC8(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
			   bool avoid_eng_affin)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	enum _ecore_status_t rc;

	/* Backwards compatible mode:
	 * - RoCE packets     - Use engine 0.
	 * - Non-RoCE packets - Use connection based classification for L2 PFs,
	 *                      and engine 0 otherwise.
	 */
	if (avoid_eng_affin) {
		enum ecore_eng eng;
		u8 ppfid;

		if (FUNC4(p_hwfn)) {
			eng = ECORE_ENG0;
			rc = FUNC7(p_dev, eng);
			if (rc != ECORE_SUCCESS) {
				FUNC0(p_dev, false,
					  "Failed to set the RoCE engine affinity\n");
				return rc;
			}

			FUNC1(p_dev, ECORE_MSG_SP,
				   "LLH [backwards compatible mode]: Set the engine affinity of RoCE packets as %d\n",
				   eng);
		}

		eng = (FUNC2(p_hwfn) ||
		       FUNC3(p_hwfn)) ? ECORE_ENG0
							   : ECORE_BOTH_ENG;
		for (ppfid = 0; ppfid < p_dev->p_llh_info->num_ppfid; ppfid++) {
			rc = FUNC6(p_dev, ppfid, eng);
			if (rc != ECORE_SUCCESS) {
				FUNC0(p_dev, false,
					  "Failed to set the engine affinity of ppfid %d\n",
					  ppfid);
				return rc;
			}
		}

		FUNC1(p_dev, ECORE_MSG_SP,
			   "LLH [backwards compatible mode]: Set the engine affinity of non-RoCE packets as %d\n",
			   eng);

		return ECORE_SUCCESS;
	}

	return FUNC5(p_hwfn, p_ptt);
}