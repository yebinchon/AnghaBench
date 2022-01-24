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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 () ; 

__attribute__((used)) static char *
FUNC4(const char *p)
{
	/* + at start of regexp is a normal character for Gnu m4 */
	if (*p == '^') {
		FUNC0(*p);
		p++;
	}
	if (*p == '+') {
		FUNC0('\\');
	}
	/* This could use strcspn for speed... */
	while (*p != '\0') {
		if (*p == '\\') {
			switch(p[1]) {
			case '(':
			case ')':
			case '|':
				FUNC0(p[1]);
				break;
			case 'w':
				FUNC2("[_a-zA-Z0-9]");
				break;
			case 'W':
				FUNC2("[^_a-zA-Z0-9]");
				break;
			case '<':
				FUNC2("[[:<:]]");
				break;
			case '>':
				FUNC2("[[:>:]]");
				break;
			default:
				FUNC1(p, 2);
				break;
			}
			p+=2;
			continue;
		}
		if (*p == '(' || *p == ')' || *p == '|')
			FUNC0('\\');

		FUNC0(*p);
		p++;
	}
	return FUNC3();
}