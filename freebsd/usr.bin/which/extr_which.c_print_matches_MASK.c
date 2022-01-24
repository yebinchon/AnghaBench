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
typedef  int /*<<< orphan*/  candidate ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  allpaths ; 
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static int
FUNC4(char *path, char *filename)
{
	char candidate[PATH_MAX];
	const char *d;
	int found;

	if (FUNC2(filename, '/') != NULL)
		return (FUNC0(filename) ? 0 : -1);
	found = 0;
	while ((d = FUNC3(&path, ":")) != NULL) {
		if (*d == '\0')
			d = ".";
		if (FUNC1(candidate, sizeof(candidate), "%s/%s", d,
		    filename) >= (int)sizeof(candidate))
			continue;
		if (FUNC0(candidate)) {
			found = 1;
			if (!allpaths)
				break;
		}
	}
	return (found ? 0 : -1);
}