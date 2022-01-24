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
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  ECORE_HW_ERR_FW_ASSERT ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t FUNC2(struct ecore_hwfn *p_hwfn)
{
	FUNC0(p_hwfn, false, "FW assertion!\n");

	FUNC1(p_hwfn, ECORE_HW_ERR_FW_ASSERT);

	return ECORE_INVAL;
}