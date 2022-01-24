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
typedef  long uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (long,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  show_mem ; 
 char* FUNC1 (char const*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(int argc, const char *argv[])
{
	char *p;
	long l;
	uint32_t addr, len;

	if (argc != 2) {
		FUNC2("incorrect number of arguments.");
		return (EINVAL);
	}

	p = FUNC1(argv[0], &l, NULL);
	if (*p) {
		FUNC2("invalid address \"%s\"", argv[0]);
		return (EINVAL);
	}
	addr = l;

	p = FUNC1(argv[1], &l, NULL);
	if (*p) {
		FUNC2("memdump: invalid length \"%s\"", argv[1]);
		return (EINVAL);
	}
	len = l;

	return (FUNC0(addr, len, show_mem));
}