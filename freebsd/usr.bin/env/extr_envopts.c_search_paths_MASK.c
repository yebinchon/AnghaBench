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
 int /*<<< orphan*/  ENOENT ; 
 int PATH_MAX ; 
 int env_verbosity ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char**,char*) ; 

void
FUNC7(char *path, char **argv)
{
        char candidate[PATH_MAX];
        const char *d;
	char *filename, *fqname;

	/* If the file has a `/' in it, then no search is done */
	filename = *argv;
	if (FUNC4(filename, '/') != NULL)
		return;

	if (env_verbosity > 1) {
		FUNC1(stderr, "#env Searching:\t'%s'\n", path);
		FUNC1(stderr, "#env  for file:\t'%s'\n", filename);
	}

	fqname = NULL;
        while ((d = FUNC6(&path, ":")) != NULL) {
                if (*d == '\0')
                        d = ".";
                if (FUNC3(candidate, sizeof(candidate), "%s/%s", d,
                    filename) >= (int)sizeof(candidate))
                        continue;
                if (FUNC2(candidate)) {
                        fqname = candidate;
			break;
                }
        }

	if (fqname == NULL) {
		errno = ENOENT;
		FUNC0(127, "%s", filename);
	}
	*argv = FUNC5(candidate);
}