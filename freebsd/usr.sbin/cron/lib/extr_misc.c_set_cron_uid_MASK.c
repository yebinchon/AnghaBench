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
 int /*<<< orphan*/  ERROR_EXIT ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  ROOT_UID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3()
{
#if defined(BSD) || defined(POSIX)
	if (seteuid(ROOT_UID) < OK)
		err(ERROR_EXIT, "seteuid");
#else
	if (FUNC2(ROOT_UID) < OK)
		FUNC0(ERROR_EXIT, "setuid");
#endif
}