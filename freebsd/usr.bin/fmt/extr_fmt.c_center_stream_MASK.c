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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 size_t goal_length ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  n_errors ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(FILE *stream, const char *name)
{
	wchar_t *line, *p;
	size_t length;
	size_t width;
	int cwidth;

	while ((line = FUNC1(stream, &length)) != NULL) {
		size_t l = length;

		while (l > 0 && FUNC2(*line)) {
			++line;
			--l;
		}
		length = l;
		for (p = line, width = 0; p < &line[length]; p++)
			width += (cwidth = FUNC5(*p)) > 0 ? cwidth : 1;
		l = width;
		while (l < goal_length) {
			FUNC3(' ');
			l += 2;
		}
		FUNC6(L"%.*ls\n", (int)length, line);
	}
	if (FUNC0(stream)) {
		FUNC4("%s", name);
		++n_errors;
	}
}