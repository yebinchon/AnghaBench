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
struct stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 long NAME_MAX ; 
 long PATH_MAX ; 
 scalar_t__ Pflag ; 
 int /*<<< orphan*/  _PC_NAME_MAX ; 
 int /*<<< orphan*/  _PC_PATH_MAX ; 
 long _POSIX_NAME_MAX ; 
 long _POSIX_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ pflag ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,struct stat*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char const*) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC12(const char *path)
{
	struct stat sb;
	long complen, namemax, pathmax, svnamemax;
	int last;
	char *end, *p, *pathd;

	if ((pathd = FUNC6(path)) == NULL)
		FUNC0(1, "strdup");

	p = pathd;

	if (Pflag && *p == '\0') {
		FUNC11("%s: empty pathname", path);
		goto bad;
	}
	if ((Pflag || pflag) && (*p == '-' || FUNC9(p, "/-") != NULL)) {
		FUNC11("%s: contains a component starting with '-'", path);
		goto bad;
	}

	if (!pflag) {
		errno = 0;
		namemax = FUNC2(*p == '/' ? "/" : ".", _PC_NAME_MAX);
		if (namemax == -1 && errno != 0)
			namemax = NAME_MAX;
	} else
		namemax = _POSIX_NAME_MAX;

	for (;;) {
		p += FUNC8(p, "/");
		complen = (long)FUNC5(p, "/");
		end = p + complen;
		last = *end == '\0';
		*end = '\0';

		if (namemax != -1 && complen > namemax) {
			FUNC11("%s: %s: component too long (limit %ld)", path,
			    p, namemax);
			goto bad;
		}

		if (!pflag && FUNC4(pathd, &sb) == -1 && errno != ENOENT) {
			FUNC10("%s: %.*s", path, (int)(FUNC7(pathd) -
			    complen - 1), pathd);
			goto bad;
		}

		if (pflag && !FUNC3(p)) {
			FUNC11("%s: %s: component contains non-portable "
			    "character", path, p);
			goto bad;
		}

		if (last)
			break;

		if (!pflag) {
			errno = 0;
			svnamemax = namemax;
			namemax = FUNC2(pathd, _PC_NAME_MAX);
			if (namemax == -1 && errno != 0)
				namemax = svnamemax;
		}

		*end = '/';
		p = end + 1;
	}

	if (!pflag) {
		errno = 0;
		pathmax = FUNC2(path, _PC_PATH_MAX);
		if (pathmax == -1 && errno != 0)
			pathmax = PATH_MAX;
	} else
		pathmax = _POSIX_PATH_MAX;
	if (pathmax != -1 && FUNC7(path) >= (size_t)pathmax) {
		FUNC11("%s: path too long (limit %ld)", path, pathmax - 1);
		goto bad;
	}

	FUNC1(pathd);
	return (0);

bad:	FUNC1(pathd);
	return (1);
}