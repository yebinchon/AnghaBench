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
struct macro_definition {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct macro_definition*) ; 
 struct macro_definition* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (char const*,struct macro_definition*)) ; 

__attribute__((used)) static void
FUNC3(const char *argv[], int argc)
{
	int n;
	struct macro_definition *p;

	if (argc > 2) {
		for (n = 2; n < argc; n++)
			if ((p = FUNC1(argv[n])) != NULL)
				FUNC0(argv[n], p);
	} else
		FUNC2(dump_one_def);
}