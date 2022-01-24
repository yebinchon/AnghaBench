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
 scalar_t__ L_opt ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 
 char FUNC4 (unsigned char) ; 

__attribute__((used)) static char *
FUNC5(const char *path)
{
	char *str;
	size_t i, len;

	len = FUNC3(path);
	while (len && path[len - 1] == '/')
		len--;
	if ((str = FUNC1(len + 1)) == NULL) {
		errno = ENOMEM;
		FUNC0("malloc()");
	}
	if (L_opt) {
		for (i = 0; i < len; ++i)
			str[i] = FUNC4((unsigned char)path[i]);
	} else {
		FUNC2(str, path, len);
	}
	str[len] = '\0';

	return (str);
}