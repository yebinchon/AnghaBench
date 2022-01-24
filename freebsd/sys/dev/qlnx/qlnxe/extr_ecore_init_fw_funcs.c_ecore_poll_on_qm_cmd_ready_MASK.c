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
typedef  scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ECORE_MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QM_REG_SDMCMDREADY ; 
 scalar_t__ QM_STOP_CMD_MAX_POLL_COUNT ; 
 int /*<<< orphan*/  QM_STOP_CMD_POLL_PERIOD_US ; 
 scalar_t__ FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ecore_hwfn *p_hwfn,
									   struct ecore_ptt *p_ptt)
{
	u32 reg_val, i;

	for (i = 0, reg_val = 0; i < QM_STOP_CMD_MAX_POLL_COUNT && !reg_val; i++) {
		FUNC1(QM_STOP_CMD_POLL_PERIOD_US);
		reg_val = FUNC2(p_hwfn, p_ptt, QM_REG_SDMCMDREADY);
	}

	/* Check if timeout while waiting for SDM command ready */
	if (i == QM_STOP_CMD_MAX_POLL_COUNT) {
		FUNC0(p_hwfn, ECORE_MSG_DEBUG, "Timeout when waiting for QM SDM command ready signal\n");
		return false;
	}

	return true;
}