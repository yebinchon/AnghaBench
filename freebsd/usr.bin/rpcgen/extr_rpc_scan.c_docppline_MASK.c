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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(char *line, int *lineno, const char **fname)
{
	char *file;
	int num;
	char *p;

	line++;
	while (FUNC4(*line)) {
		line++;
	}
	num = FUNC0(line);
	while (FUNC3(*line)) {
		line++;
	}
	while (FUNC4(*line)) {
		line++;
	}
	if (*line != '"') {
		FUNC1("preprocessor error");
	}
	line++;
	p = file = FUNC6(FUNC5(line) + 1);
	while (*line && *line != '"') {
		*p++ = *line++;
	}
	if (*line == 0) {
		FUNC1("preprocessor error");
	}
	*p = 0;
	if (*file == 0) {
		*fname = NULL;
		FUNC2(file);
	} else {
		*fname = file;
	}
	*lineno = num - 1;
}