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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  BSP ; 
 int /*<<< orphan*/  USERBOOT_EXIT_QUIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ cr3 ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  gdtbase ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  rsp ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg, uint64_t rip)
{
	int error;

	if (cr3 == 0)
		error = FUNC3(ctx, BSP, rip, gdtbase,
		    rsp);
	else
		error = FUNC2(ctx, BSP, rip, cr3, gdtbase,
		    rsp);
	if (error) {
		FUNC1("vm_setup_freebsd_registers");
		FUNC0(NULL, USERBOOT_EXIT_QUIT);
	}

	FUNC0(NULL, 0);
}