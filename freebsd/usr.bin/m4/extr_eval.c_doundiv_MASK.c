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
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int maxout ; 
 scalar_t__ mimic_gnu ; 
 int /*<<< orphan*/ ** outfile ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static void
FUNC3(const char *argv[], int argc)
{
	int ind;
	int n;

	if (argc > 2) {
		for (ind = 2; ind < argc; ind++) {
			const char *errstr;
			n = FUNC2(argv[ind], 1, INT_MAX, &errstr);
			if (errstr) {
				if (errno == EINVAL && mimic_gnu)
					FUNC1(argv[ind]);
			} else {
				if (n < maxout && outfile[n] != NULL)
					FUNC0(n);
			}
		}
	}
	else
		for (n = 1; n < maxout; n++)
			if (outfile[n] != NULL)
				FUNC0(n);
}