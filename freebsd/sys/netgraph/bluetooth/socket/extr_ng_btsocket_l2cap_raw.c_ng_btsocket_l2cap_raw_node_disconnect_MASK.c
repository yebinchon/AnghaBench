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
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

__attribute__((used)) static int
FUNC3(hook_p hook)
{
	/*
	 * If hook has private information than we must have this hook in
	 * the routing table and must schedule cleaning for the routing table.
	 * Otherwise hook was connected but we never got "hook_info" message,
	 * so we have never added this hook to the routing table and it save
	 * to just delete it.
	 */

	if (FUNC0(hook) != NULL)
		return (FUNC2());

	FUNC1(hook); /* Remove extra reference */

	return (0);
}