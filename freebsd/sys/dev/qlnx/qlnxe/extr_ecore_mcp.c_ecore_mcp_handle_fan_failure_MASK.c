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
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  ECORE_HW_ERR_FAN_FAIL ; 
 struct ecore_hwfn* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ecore_hwfn *p_hwfn)
{
	/* A single notification should be sent to upper driver in CMT mode */
	if (p_hwfn != FUNC1(p_hwfn->p_dev))
		return;

	FUNC0(p_hwfn, false,
		  "Fan failure was detected on the network interface card and it's going to be shut down.\n");

	FUNC2(p_hwfn, ECORE_HW_ERR_FAN_FAIL);
}