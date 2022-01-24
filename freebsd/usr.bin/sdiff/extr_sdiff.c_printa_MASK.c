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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 size_t file2ln ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(FILE *file, size_t line2)
{
	char *line;

	for (; file2ln <= line2; ++file2ln) {
		if (!(line = FUNC3(file)))
			FUNC1(2, "append ended early");
		FUNC0(NULL, '>', line);
	}
	FUNC2();
}