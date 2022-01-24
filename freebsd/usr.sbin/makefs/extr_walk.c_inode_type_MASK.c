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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

const char *
FUNC7(mode_t mode)
{
	if (FUNC5(mode))
		return ("file");
	if (FUNC4(mode))
		return ("symlink");
	if (FUNC2(mode))
		return ("dir");
	if (FUNC4(mode))
		return ("link");
	if (FUNC3(mode))
		return ("fifo");
	if (FUNC6(mode))
		return ("socket");
	/* XXX should not happen but handle them */
	if (FUNC1(mode))
		return ("char");
	if (FUNC0(mode))
		return ("block");
	return ("unknown");
}