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

/* Variables and functions */
 scalar_t__ cpu_fxsr ; 
 int /*<<< orphan*/  FUNC0 (union savefpu*) ; 
 int /*<<< orphan*/  FUNC1 (union savefpu*) ; 
 scalar_t__ use_xsave ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsave_mask ; 

__attribute__((used)) static void
FUNC3(union savefpu *addr)
{

	if (use_xsave)
		FUNC2((char *)addr, xsave_mask);
	else if (cpu_fxsr)
		FUNC1(addr);
	else
		FUNC0(addr);
}