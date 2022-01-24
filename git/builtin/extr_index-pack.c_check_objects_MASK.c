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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  progress ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static unsigned FUNC7(void)
{
	unsigned i, max, foreign_nr = 0;

	max = FUNC4();

	if (verbose)
		progress = FUNC5(FUNC0("Checking objects"), max);

	for (i = 0; i < max; i++) {
		foreign_nr += FUNC1(FUNC3(i));
		FUNC2(progress, i + 1);
	}

	FUNC6(&progress);
	return foreign_nr;
}