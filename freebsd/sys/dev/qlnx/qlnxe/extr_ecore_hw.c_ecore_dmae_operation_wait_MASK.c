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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__* p_completion_word; } ;
struct ecore_hwfn {TYPE_1__ dmae_info; int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ DMAE_COMPLETION_VAL ; 
 int /*<<< orphan*/  DMAE_MIN_WAIT_TIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int ECORE_EMUL_FACTOR ; 
 int ECORE_FPGA_FACTOR ; 
 int /*<<< orphan*/  ECORE_MSG_HW ; 
 int ECORE_SUCCESS ; 
 int ECORE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC5(struct ecore_hwfn *p_hwfn)
{
	u32 wait_cnt_limit = 10000, wait_cnt = 0;
	enum _ecore_status_t ecore_status = ECORE_SUCCESS;

#ifndef ASIC_ONLY
	u32 factor = (FUNC0(p_hwfn->p_dev) ?
		      ECORE_EMUL_FACTOR :
		      (FUNC1(p_hwfn->p_dev) ?
		       ECORE_FPGA_FACTOR : 1));

	wait_cnt_limit *= factor;
#endif

	/* DMAE_E4_TODO : TODO check if we have to call any other function
	 * other than BARRIER to sync the completion_word since we are not
	 * using the volatile keyword for this
	 */
	FUNC3(p_hwfn->p_dev);
	while (*p_hwfn->dmae_info.p_completion_word != DMAE_COMPLETION_VAL) {
		FUNC4(DMAE_MIN_WAIT_TIME);
		if (++wait_cnt > wait_cnt_limit) {
			FUNC2(p_hwfn->p_dev, ECORE_MSG_HW,
				  "Timed-out waiting for operation to complete. Completion word is 0x%08x expected 0x%08x.\n",
				  *(p_hwfn->dmae_info.p_completion_word),
				  DMAE_COMPLETION_VAL);
			ecore_status = ECORE_TIMEOUT;
			break;
		}

		/* to sync the completion_word since we are not
		 * using the volatile keyword for p_completion_word
		 */
		FUNC3(p_hwfn->p_dev);
	}

	if (ecore_status == ECORE_SUCCESS)
		*p_hwfn->dmae_info.p_completion_word = 0;

	return ecore_status;
}