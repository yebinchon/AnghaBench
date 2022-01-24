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
 int OFW_COMPAT_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (char*,int,char const*) ; 

int
FUNC4(phandle_t node, const char *compatstr)
{
	char compat[OFW_COMPAT_LEN];
	int len, rv;

	if ((len = FUNC1(node, "compatible")) <= 0)
		return (0);

	FUNC2(compat, OFW_COMPAT_LEN);

	if (FUNC0(node, "compatible", compat, OFW_COMPAT_LEN) < 0)
		return (0);

	rv = FUNC3(compat, len, compatstr);

	return (rv);
}