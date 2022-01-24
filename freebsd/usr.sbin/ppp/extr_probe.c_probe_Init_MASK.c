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
struct TYPE_2__ {int select_changes_time; int ipv6_available; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogDEBUG ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_1__ probe ; 
 scalar_t__ FUNC2 () ; 

void
FUNC3()
{
  probe.select_changes_time = FUNC2() ? 1 : 0;
  FUNC1(LogDEBUG, "Select changes time: %s\n",
             probe.select_changes_time ? "yes" : "no");
#ifndef NOINET6
  probe.ipv6_available = FUNC0() ? 1 : 0;
  FUNC1(LogDEBUG, "IPv6 available: %s\n",
             probe.ipv6_available ? "yes" : "no");
#endif
}