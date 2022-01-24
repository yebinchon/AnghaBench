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
 size_t line_width ; 
 int /*<<< orphan*/  FUNC0 (char const*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 size_t width ; 

__attribute__((used)) static void
FUNC3(const char *s1, const char divider, const char *s2)
{
	size_t col;

	/* Print first column.  Skips if s1 == NULL. */
	col = 0;
	if (s1) {
		/* Skip angle bracket and space. */
		FUNC0(s1, &col, width);

	}

	/* Otherwise, we pad this column up to width. */
	for (; col < width; ++col)
		FUNC2(' ');

	/* Only print left column. */
	if (divider == ' ' && !s2) {
		FUNC1(" (\n");
		return;
	}

	/*
	 * Print column divider.  If there is no second column, we don't
	 * need to add the space for padding.
	 */
	if (!s2) {
		FUNC1(" %c\n", divider);
		return;
	}
	FUNC1(" %c ", divider);
	col += 3;

	/* Skip angle bracket and space. */
	FUNC0(s2, &col, line_width);

	FUNC2('\n');
}