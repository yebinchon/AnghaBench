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
struct cryptop {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cryptop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crp_next ; 
 int /*<<< orphan*/  crp_q ; 
 scalar_t__ crp_sleep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct cryptop *crp)
{

	FUNC0();
	FUNC2(&crp_q, crp, crp_next);
	if (crp_sleep)
		FUNC3(&crp_q);
	FUNC1();
}