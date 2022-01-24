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
struct dmar_unit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAR_BARRIER_USEQ ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pre_use_nb ; 

void
FUNC5(struct dmar_unit *dmar)
{

	if (!FUNC1(dmar, DMAR_BARRIER_USEQ))
		return;
	FUNC0(dmar);
	FUNC3(dmar, pre_use_nb, FUNC4(pre_use_nb),
	    NULL, 0);
	FUNC2(dmar, DMAR_BARRIER_USEQ);
}