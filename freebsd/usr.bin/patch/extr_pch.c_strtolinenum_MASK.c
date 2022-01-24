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
 int /*<<< orphan*/  LINENUM_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  p_input_line ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static LINENUM
FUNC4(char *nptr, char **endptr)
{
	LINENUM rv;
	char c;
	char *p;
	const char *errstr;

	for (p = nptr; FUNC1((unsigned char)*p); p++)
		;

	if (p == nptr)
		FUNC2();

	c = *p;
	*p = '\0';

	rv = FUNC3(nptr, 0, LINENUM_MAX, &errstr);
	if (errstr != NULL)
		FUNC0("invalid line number at line %ld: `%s' is %s\n",
		    p_input_line, nptr, errstr);

	*p = c;
	*endptr = p;

	return rv;
}