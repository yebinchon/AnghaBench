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
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int FDT_COMPAT_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 

int
FUNC3(phandle_t node, const char *compatible)
{
	char compat[FDT_COMPAT_LEN];

	if (FUNC1(node, "compatible") <= 0)
		return (0);

	if (FUNC0(node, "compatible", compat, FDT_COMPAT_LEN) < 0)
		return (0);

	if (FUNC2(compat, compatible, FDT_COMPAT_LEN) == 0)
		/* This fits. */
		return (1);

	return (0);
}