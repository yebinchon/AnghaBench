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
struct bufdomain {int /*<<< orphan*/  bd_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufdomain*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bufdomain *bd)
{

	/*
	 * avoid the lock if the daemon is running.
	 */
	if (FUNC2(&bd->bd_running, 1) == 0) {
		FUNC0(bd);
		FUNC3(&bd->bd_running, 1);
		FUNC4(&bd->bd_running);
		FUNC1(bd);
	}
}