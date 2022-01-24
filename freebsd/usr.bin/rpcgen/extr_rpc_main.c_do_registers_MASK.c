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
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ inetdflag ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  tirpcflag ; 
 int /*<<< orphan*/  valid_i_nettypes ; 
 int /*<<< orphan*/  valid_ti_nettypes ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(int argc, const char *argv[])
{
	int i;

	if (inetdflag || !tirpcflag) {
		for (i = 1; i < argc; i++) {
			if (FUNC1(argv[i], "-s")) {
				if (!FUNC0(argv[i + 1],
						    valid_i_nettypes))
					return (0);
				FUNC2(argv[i + 1]);
				i++;
			}
		}
	} else {
		for (i = 1; i < argc; i++)
			if (FUNC1(argv[i], "-s")) {
				if (!FUNC0(argv[i + 1],
						    valid_ti_nettypes))
					return (0);
				FUNC4(argv[i + 1]);
				i++;
			} else if (FUNC1(argv[i], "-n")) {
				FUNC3(argv[i + 1]);
				i++;
			}
	}
	return (1);
}