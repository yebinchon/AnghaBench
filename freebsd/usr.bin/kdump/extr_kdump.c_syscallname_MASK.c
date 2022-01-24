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
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ syscallno ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(u_int code, u_int sv_flags)
{
	const char *name;

	name = FUNC2(FUNC1(sv_flags), code);
	if (name == NULL)
		FUNC0("[%d]", code);
	else {
		FUNC0("%s", name);
		if (syscallno)
			FUNC0("[%d]", code);
	}
}