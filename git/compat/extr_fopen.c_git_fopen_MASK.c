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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EISDIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 

FILE *FUNC5(const char *path, const char *mode)
{
	FILE *fp;
	struct stat st;

	if (mode[0] == 'w' || mode[0] == 'a')
		return FUNC3(path, mode);

	if (!(fp = FUNC3(path, mode)))
		return NULL;

	if (FUNC4(FUNC2(fp), &st)) {
		FUNC1(fp);
		return NULL;
	}

	if (FUNC0(st.st_mode)) {
		FUNC1(fp);
		errno = EISDIR;
		return NULL;
	}

	return fp;
}