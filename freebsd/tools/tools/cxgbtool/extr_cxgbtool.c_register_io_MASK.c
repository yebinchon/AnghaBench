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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[], int start_arg,
		       const char *iff_name)
{
	char *p;
	uint32_t addr, val = 0, w = 0;

	if (argc != start_arg + 1) return -1;

	addr = FUNC2(argv[start_arg], &p, 0);
	if (p == argv[start_arg]) return -1;
	if (*p == '=' && p[1]) {
		val = FUNC2(p + 1, &p, 0);
		w = 1;
	}
	if (*p) {
		FUNC3("bad parameter \"%s\"", argv[start_arg]);
		return -1;
	}

	if (w)
		FUNC4(iff_name, addr, val);
	else {
		val = FUNC1(iff_name, addr);
		FUNC0("%#x [%u]\n", val, val);
	}
	return 0;
}