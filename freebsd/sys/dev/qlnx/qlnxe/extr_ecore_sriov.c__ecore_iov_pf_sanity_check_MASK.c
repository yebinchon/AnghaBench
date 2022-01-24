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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int,int,int) ; 

__attribute__((used)) static bool FUNC4(struct ecore_hwfn *p_hwfn, int vfid,
				       bool b_fail_malicious)
{
	/* Check PF supports sriov */
	if (FUNC2(p_hwfn->p_dev) || !FUNC0(p_hwfn->p_dev) ||
	    !FUNC1(p_hwfn))
		return false;

	/* Check VF validity */
	if (!FUNC3(p_hwfn, vfid, true, b_fail_malicious))
		return false;

	return true;
}