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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  polltime ; 
 int /*<<< orphan*/  riscv_callout ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *v)
{
	int c;

	FUNC2(tp);
	while ((c = FUNC1(NULL)) != -1)
		FUNC4(tp, c, 0);
	FUNC5(tp);
	FUNC3(tp);

	FUNC0(&riscv_callout, polltime, riscv_timeout, NULL);
}