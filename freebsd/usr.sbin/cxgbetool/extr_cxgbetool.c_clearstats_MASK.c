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
 int /*<<< orphan*/  CHELSIO_T4_CLEAR_STATS ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,long*) ; 
 char* FUNC1 (char const*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(int argc, const char *argv[])
{
	char *p;
	long l;
	uint32_t port;

	if (argc != 1) {
		FUNC2("incorrect number of arguments.");
		return (EINVAL);
	}

	p = FUNC1(argv[0], &l, NULL);
	if (*p) {
		FUNC2("invalid port id \"%s\"", argv[0]);
		return (EINVAL);
	}
	port = l;

	return FUNC0(CHELSIO_T4_CLEAR_STATS, &port);
}