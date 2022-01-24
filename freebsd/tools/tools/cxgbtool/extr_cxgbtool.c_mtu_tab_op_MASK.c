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
struct ch_mtus {unsigned int nmtus; int* mtus; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_GETMTUTAB ; 
 int /*<<< orphan*/  CHELSIO_SETMTUTAB ; 
 int NMTUS ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,struct ch_mtus*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 unsigned long FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(int argc, char *argv[], int start_arg, const char *iff_name)
{
	struct ch_mtus m;
	unsigned int i;

	if (argc == start_arg) {
		if (FUNC0(iff_name, CHELSIO_GETMTUTAB, &m) < 0)
			FUNC1(1, "get MTU table");
		for (i = 0; i < m.nmtus; ++i)
			FUNC3("%u ", m.mtus[i]);
		FUNC3("\n");
	} else if (argc <= start_arg + NMTUS) {
		m.nmtus = argc - start_arg;

		for (i = 0; i < m.nmtus; ++i) {
			char *p;
			unsigned long mt = FUNC4(argv[start_arg + i], &p, 0);

			if (*p || mt > 9600) {
				FUNC5("bad parameter \"%s\"",
				      argv[start_arg + i]);
				return -1;
			}
			if (i && mt < m.mtus[i - 1])
				FUNC2(1, "MTUs must be in ascending order");
			m.mtus[i] = mt;
		}
		if (FUNC0(iff_name, CHELSIO_SETMTUTAB, &m) < 0)
			FUNC1(1, "set MTU table");
	} else
		return -1;

	return 0;
}