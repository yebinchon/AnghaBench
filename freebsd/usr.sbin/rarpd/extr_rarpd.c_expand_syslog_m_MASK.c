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
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(const char *fmt, char **newfmt) {
	const char *str, *m;
	char *p, *np;

	p = FUNC2("");
	str = fmt;
	while ((m = FUNC4(str, "%m")) != NULL) {
		FUNC0(&np, "%s%.*s%d", p, (int)(m - str),
		    str, FUNC3(errno));
		FUNC1(p);
		if (np == NULL) {
			errno = ENOMEM;
			return (-1);
		}
		p = np;
		str = m + 2;
	}
	
	if (*str != '\0') {
		FUNC0(&np, "%s%s", p, str);
		FUNC1(p);
		if (np == NULL) {
			errno = ENOMEM;
			return (-1);
		}
		p = np;
	}

	*newfmt = p;
	return (0);
}