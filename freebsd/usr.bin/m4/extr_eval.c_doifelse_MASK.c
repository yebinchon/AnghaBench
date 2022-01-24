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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(const char *argv[], int argc)
{
	while (argc > 4) {
		if (FUNC0(argv[2], argv[3])) {
			FUNC1(argv[4]);
			break;
		} else if (argc == 6) {
			FUNC1(argv[5]);
			break;
		} else {
			argv += 3;
			argc -= 3;
		}
	}
}