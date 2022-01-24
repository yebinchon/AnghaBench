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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (size_t) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(const char *pathname, off_t sz)
{
	struct stat st;
	const char *template = "/flocktempXXXXXX";
	size_t len;
	char *filename;
	int fd;

	if (FUNC7(pathname, &st) == 0) {
		if (FUNC0(st.st_mode)) {
			fd = FUNC6(pathname, O_RDWR);
			if (fd < 0)
				FUNC1(1, "open(%s)", pathname);
			if (FUNC3(fd, sz) < 0)
				FUNC1(1, "ftruncate");
			return (fd);
		}
	}

	len = FUNC10(pathname) + FUNC10(template) + 1;
	filename = FUNC4(len);
	FUNC9(filename, pathname);
	FUNC8(filename, template);
	fd = FUNC5(filename);
	if (fd < 0)
		FUNC1(1, "mkstemp");
	if (FUNC3(fd, sz) < 0)
		FUNC1(1, "ftruncate");
	if (FUNC11(filename) < 0)
		FUNC1(1, "unlink");
	FUNC2(filename);

	return (fd);
}