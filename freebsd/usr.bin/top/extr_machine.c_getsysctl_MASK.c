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
 int /*<<< orphan*/  TOP_EX_SYS_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const char *name, void *ptr, size_t len)
{
	size_t nlen = len;

	if (FUNC3(name, ptr, &nlen, NULL, 0) == -1) {
		FUNC0(stderr, "top: sysctl(%s...) failed: %s\n", name,
		    FUNC2(errno));
		FUNC1(TOP_EX_SYS_ERROR);
	}
	if (nlen != len) {
		FUNC0(stderr, "top: sysctl(%s...) expected %lu, got %lu\n",
		    name, (unsigned long)len, (unsigned long)nlen);
		FUNC1(TOP_EX_SYS_ERROR);
	}
}