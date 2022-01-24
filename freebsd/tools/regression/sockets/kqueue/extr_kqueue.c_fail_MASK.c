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
 int curtest ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(int error, const char *func, const char *socktype, const char *rest)
{

	FUNC1("not ok %d\n", curtest);

	if (socktype == NULL)
		FUNC1("# %s(): %s\n", func, FUNC2(error));
	else if (rest == NULL)
		FUNC1("# %s(%s): %s\n", func, socktype,
		    FUNC2(error));
	else
		FUNC1("# %s(%s, %s): %s\n", func, socktype, rest,
		    FUNC2(error));
	FUNC0(-1);
}