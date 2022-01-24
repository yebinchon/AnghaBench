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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 

__attribute__((used)) static int
FUNC2(char *dirp)
{
	char *cp;
	int ret = 1;
	struct stat sb;

	cp = dirp + 1;
	while (*cp && ret) {
		if (*cp == '/') {
			*cp = '\0';
			if (FUNC1(dirp, &sb) < 0 || !FUNC0(sb.st_mode))
				ret = 0;
			*cp = '/';
		}
		cp++;
	}
	if (FUNC1(dirp, &sb) < 0 || !FUNC0(sb.st_mode))
		ret = 0;
	return (ret);
}