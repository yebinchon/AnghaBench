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
 size_t FUNC0 (char const*,int) ; 
 size_t FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 size_t FUNC3 (char const*,int) ; 
 size_t FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 size_t FUNC6 (char const*,int) ; 

__attribute__((used)) static size_t FUNC7(const char *line, size_t len)
{
	const char *end = line + len;
	size_t n;

	/*
	 * Posix: 2010-07-05 19:41:17
	 * GNU: 2010-07-05 19:41:17.620000023 -0500
	 */

	if (!FUNC2(end[-1]))
		return 0;

	n = FUNC3(line, end - line);
	if (!n)
		n = FUNC6(line, end - line);
	end -= n;

	n = FUNC4(line, end - line);
	if (!n)
		n = FUNC1(line, end - line);
	end -= n;

	n = FUNC0(line, end - line);
	if (!n)	/* No date.  Too bad. */
		return 0;
	end -= n;

	if (end == line)	/* No space before date. */
		return 0;
	if (end[-1] == '\t') {	/* Success! */
		end--;
		return line + len - end;
	}
	if (end[-1] != ' ')	/* No space before date. */
		return 0;

	/* Whitespace damage. */
	end -= FUNC5(line, end - line);
	return line + len - end;
}