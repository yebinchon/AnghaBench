#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ecore_hwfn {TYPE_1__* p_eq; int /*<<< orphan*/  p_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct ecore_hwfn *p_hwfn)
{
	if (!p_hwfn->p_eq)
		return;

	FUNC1(p_hwfn->p_dev, &p_hwfn->p_eq->chain);

	FUNC0(p_hwfn->p_dev, p_hwfn->p_eq);
	p_hwfn->p_eq = OSAL_NULL;
}