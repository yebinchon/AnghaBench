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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*) ; 

__attribute__((used)) static void FUNC4(struct ecore_hwfn *p_hwfn)
{
	FUNC0(p_hwfn, ECORE_MSG_RDMA, "\n");

	FUNC2(p_hwfn);

	FUNC3(p_hwfn);

	FUNC1(p_hwfn);
}