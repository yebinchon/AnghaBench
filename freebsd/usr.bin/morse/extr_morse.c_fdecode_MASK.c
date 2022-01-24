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
 int BUFSIZ ; 
 int /*<<< orphan*/  WHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6(FILE *stream)
{
	char *n, *p, *s;
	char buf[BUFSIZ];

	s = buf;
	while (FUNC1(s, BUFSIZ - (s - buf), stream)) {
		p = buf;

		while (*p && FUNC2(*p)) {
			p++;
		}
		while (*p && FUNC3(*p)) {
			p++;
			FUNC4 (' ');
		}
		while (*p) {
			n = FUNC5(p, WHITESPACE);
			if (n == NULL) {
				/* The token was interrupted at the end
				 * of the buffer. Shift it to the begin
				 * of the buffer.
				 */
				for (s = buf; *p; *s++ = *p++)
					;
			} else {
				*n = '\0';
				n++;
				FUNC0(p);
				p = n;
			}
		}
	}
	FUNC4('\n');
}