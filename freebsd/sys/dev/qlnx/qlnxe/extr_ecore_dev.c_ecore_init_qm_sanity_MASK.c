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
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_PQ ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  ECORE_VPORT ; 
 scalar_t__ FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ecore_hwfn*) ; 
 scalar_t__ FUNC3 (struct ecore_hwfn*) ; 

__attribute__((used)) static enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn)
{
	if (FUNC3(p_hwfn) > FUNC1(p_hwfn, ECORE_VPORT)) {
		FUNC0(p_hwfn, "requested amount of vports exceeds resource\n");
		return ECORE_INVAL;
	}

	if (FUNC2(p_hwfn) > FUNC1(p_hwfn, ECORE_PQ)) {
		FUNC0(p_hwfn, "requested amount of pqs exceeds resource\n");
		return ECORE_INVAL;
	}

	return ECORE_SUCCESS;
}