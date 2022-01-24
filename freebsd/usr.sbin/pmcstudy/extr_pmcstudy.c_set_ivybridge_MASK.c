#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  explain; int /*<<< orphan*/  ents; int /*<<< orphan*/  number; int /*<<< orphan*/  cputype; } ;

/* Variables and functions */
 int /*<<< orphan*/  IVY_BRIDGE_COUNT ; 
 int /*<<< orphan*/  explain_name_ib ; 
 int /*<<< orphan*/  ivy_bridge ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ the_cpu ; 

__attribute__((used)) static void
FUNC1(void)
{
	FUNC0(the_cpu.cputype, "IvyBridge PMC");
	the_cpu.number = IVY_BRIDGE_COUNT;
	the_cpu.ents = ivy_bridge;
	the_cpu.explain = explain_name_ib;
}