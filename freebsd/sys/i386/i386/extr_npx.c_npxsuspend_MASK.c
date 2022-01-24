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
typedef  union savefpu {int dummy; } savefpu ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union savefpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_max_ext_state_size ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC2 (union savefpu*) ; 
 int /*<<< orphan*/  hw_float ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  npx_initialstate ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(union savefpu *addr)
{
	register_t cr0;

	if (!hw_float)
		return;
	if (FUNC0(fpcurthread) == NULL) {
		FUNC1(npx_initialstate, addr, cpu_max_ext_state_size);
		return;
	}
	cr0 = FUNC4();
	FUNC5();
	FUNC2(addr);
	FUNC3(cr0);
}