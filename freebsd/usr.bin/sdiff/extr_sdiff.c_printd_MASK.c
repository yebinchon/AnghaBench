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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 size_t file1ln ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(FILE *file1, size_t file1end)
{
	char *line1;

	/* Print out lines file1ln to line2. */
	for (; file1ln <= file1end; ++file1ln) {
		if (!(line1 = FUNC3(file1)))
			FUNC1(2, "file1 ended early in delete");
		FUNC0(line1, '<', NULL);
	}
	FUNC2();
}