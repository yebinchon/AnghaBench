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
typedef  int /*<<< orphan*/  LINENUM ;

/* Variables and functions */
 size_t USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rejfp ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(int ch, LINENUM i)
{
	size_t len;
	const char *line = FUNC1(i);

	len = FUNC2(line);

	FUNC0(rejfp, "%c%s", ch, line);
	if (len == 0 || line[len - 1] != '\n') {
		if (len >= USHRT_MAX)
			FUNC0(rejfp, "\n\\ Line too long\n");
		else
			FUNC0(rejfp, "\n\\ No newline at end of line\n");
	}
}