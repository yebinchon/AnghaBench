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
typedef  int /*<<< orphan*/  in_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int IN_CLASSA_NET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int IN_CLASSB_NET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int IN_CLASSC_NET ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static in_addr_t
FUNC6(in_addr_t addr)
{

	addr = FUNC5(addr);
	if (FUNC0(addr))
		return FUNC3(IN_CLASSA_NET);
	if (FUNC1(addr))
		return FUNC3(IN_CLASSB_NET);
	if (FUNC2(addr))
		return FUNC3(IN_CLASSC_NET);
	FUNC4(LOG_DEBUG, "unknown IP address class: %08X", addr);
	return FUNC3(0xffffffff);
}