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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(const char *prefix, const char *path)
{
	char *str;
	size_t prelen, len;

	prelen = prefix ? FUNC3(prefix) + 1 : 0;
	len = FUNC3(path) + 1;
	if ((str = FUNC1(prelen + len)) == NULL) {
		errno = ENOMEM;
		FUNC0("malloc()");
	}
	if (prefix) {
		FUNC2(str, prefix, prelen);	/* includes zero */
		str[prelen - 1] = '/';		/* splat zero */
	}
	FUNC2(str + prelen, path, len);	/* includes zero */

	return (str);
}