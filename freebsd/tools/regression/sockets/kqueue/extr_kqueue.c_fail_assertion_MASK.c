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

__attribute__((used)) static void
FUNC2(const char *func, const char *socktype, const char *rest,
    const char *assertion)
{

	FUNC1("not ok %d - %s\n", curtest, assertion);

	if (socktype == NULL)
		FUNC1("# %s(): assertion %s failed\n", func,
		    assertion);
	else if (rest == NULL)
		FUNC1("# %s(%s): assertion %s failed\n", func,
		    socktype, assertion);
	else
		FUNC1("# %s(%s, %s): assertion %s failed\n", func,
		    socktype, rest, assertion);
	FUNC0(-1);
}