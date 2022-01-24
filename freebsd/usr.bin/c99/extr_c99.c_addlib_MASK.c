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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static void
FUNC2(const char *lib)
{

	if (FUNC1(lib, "pthread") == 0)
		/* FreeBSD's gcc uses -pthread instead of -lpthread. */
		FUNC0("-pthread");
	else if (FUNC1(lib, "rt") == 0)
		/* librt functionality is in libc or unimplemented. */
		;
	else if (FUNC1(lib, "xnet") == 0)
		/* xnet functionality is in libc. */
		;
	else {
		FUNC0("-l");
		FUNC0(lib);
	}
}