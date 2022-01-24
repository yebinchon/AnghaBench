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
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int recov_in_prog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,...) ; 
 struct ecore_hwfn* FUNC1 (struct ecore_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*) ; 

__attribute__((used)) static void FUNC5(struct ecore_hwfn *p_hwfn,
					  struct ecore_ptt *p_ptt)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	u32 proc_kill_cnt;

	/* Prevent possible attentions/interrupts during the recovery handling
	 * and till its load phase, during which they will be re-enabled.
	 */
	FUNC4(p_hwfn, p_ptt);

	FUNC0(p_hwfn, false, "Received a process kill indication\n");

	/* The following operations should be done once, and thus in CMT mode
	 * are carried out by only the first HW function.
	 */
	if (p_hwfn != FUNC1(p_dev))
		return;

	if (p_dev->recov_in_prog) {
		FUNC0(p_hwfn, false,
			  "Ignoring the indication since a recovery process is already in progress\n");
		return;
	}

	p_dev->recov_in_prog = true;

	proc_kill_cnt = FUNC3(p_hwfn, p_ptt);
	FUNC0(p_hwfn, false, "Process kill counter: %d\n", proc_kill_cnt);

	FUNC2(p_hwfn);
}