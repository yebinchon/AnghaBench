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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(char *path)
{
	struct stat sb;
	char *sep;

	sep = FUNC5(path, '/');
	if (sep == NULL || sep == path)
		return;
	*sep = '\0';
	if (FUNC1(path, &sb) == 0) {
		if (FUNC0(sb.st_mode)) {
			*sep = '/';
			return;
		}
		FUNC6(path);
	}
	FUNC7(path);
	FUNC3(path, 0755);
	*sep = '/';

#if 0
	for (sep = path; (sep = strchr(sep, '/')) != NULL; sep++) {
		/* root in case of absolute d_arg */
		if (sep == path)
			continue;
		*sep = '\0';
		make_dir(path, 0755);
		*sep = '/';
	}
#endif
}