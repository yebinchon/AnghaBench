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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,long long,long long) ; 
 int FUNC1 (long,int,long long*) ; 
 char* FUNC2 (char const*,long*,long long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (long,int,long long) ; 

__attribute__((used)) static int
FUNC5(int argc, const char *argv[], int size)
{
	char *p, *v;
	long addr;
	long long val;
	int w = 0, rc;

	if (argc == 1) {
		/* <reg> OR <reg>=<value> */

		p = FUNC2(argv[0], &addr, NULL);
		if (*p) {
			if (*p != '=') {
				FUNC3("invalid register \"%s\"", argv[0]);
				return (EINVAL);
			}

			w = 1;
			v = p + 1;
			p = FUNC2(v, NULL, &val);

			if (*p) {
				FUNC3("invalid value \"%s\"", v);
				return (EINVAL);
			}
		}

	} else if (argc == 2) {
		/* <reg> <value> */

		w = 1;

		p = FUNC2(argv[0], &addr, NULL);
		if (*p) {
			FUNC3("invalid register \"%s\"", argv[0]);
			return (EINVAL);
		}

		p = FUNC2(argv[1], NULL, &val);
		if (*p) {
			FUNC3("invalid value \"%s\"", argv[1]);
			return (EINVAL);
		}
	} else {
		FUNC3("reg: invalid number of arguments (%d)", argc);
		return (EINVAL);
	}

	if (w)
		rc = FUNC4(addr, size, val);
	else {
		rc = FUNC1(addr, size, &val);
		if (rc == 0)
			FUNC0("0x%llx [%llu]\n", val, val);
	}

	return (rc);
}