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
 int /*<<< orphan*/  GDB_SIGNAL_TRAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int stopped_vcpu ; 

__attribute__((used)) static void
FUNC6(void)
{

	FUNC5();
	if (stopped_vcpu == -1)
		FUNC1('S');
	else
		FUNC1('T');
	FUNC0(GDB_SIGNAL_TRAP);
	if (stopped_vcpu != -1) {
		FUNC3("thread:");
		FUNC2(stopped_vcpu + 1);
		FUNC1(';');
	}
	stopped_vcpu = -1;
	FUNC4();
}