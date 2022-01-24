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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(stderr,
"usage: tabs [-n|-a|-a2|-c|-c2|-c3|-f|-p|-s|-u] [+m[n]] [-T type]\n");
	FUNC1(stderr,
"       tabs [-T type] [+[n]] n1,[n2,...]\n");
	FUNC0(1);
}