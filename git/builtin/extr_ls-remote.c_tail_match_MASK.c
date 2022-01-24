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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(const char **pattern, const char *path)
{
	const char *p;
	char *pathbuf;

	if (!pattern)
		return 1; /* no restriction */

	pathbuf = FUNC2("/%s", path);
	while ((p = *(pattern++)) != NULL) {
		if (!FUNC1(p, pathbuf, 0)) {
			FUNC0(pathbuf);
			return 1;
		}
	}
	FUNC0(pathbuf);
	return 0;
}