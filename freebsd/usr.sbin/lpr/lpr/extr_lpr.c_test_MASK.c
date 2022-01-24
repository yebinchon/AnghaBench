#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct exec {int dummy; } ;
typedef  int /*<<< orphan*/  execb ;
struct TYPE_3__ {int st_mode; scalar_t__ st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct exec) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* progname ; 
 int FUNC8 (int,struct exec*,int) ; 
 scalar_t__ rflag ; 
 scalar_t__ FUNC9 (char const*,TYPE_1__*) ; 
 TYPE_1__ statb ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,size_t) ; 
 char* FUNC11 (char const*,char) ; 

__attribute__((used)) static int
FUNC12(const char *file)
{
	struct exec execb;
	size_t dlen;
	int fd;
	char *cp, *dirpath;

	if (FUNC1(file, 4) < 0) {
		FUNC7("%s: cannot access %s\n", progname, file);
		return(-1);
	}
	if (FUNC9(file, &statb) < 0) {
		FUNC7("%s: cannot stat %s\n", progname, file);
		return(-1);
	}
	if ((statb.st_mode & S_IFMT) == S_IFDIR) {
		FUNC7("%s: %s is a directory\n", progname, file);
		return(-1);
	}
	if (statb.st_size == 0) {
		FUNC7("%s: %s is an empty file\n", progname, file);
		return(-1);
 	}
	if ((fd = FUNC6(file, O_RDONLY)) < 0) {
		FUNC7("%s: cannot open %s\n", progname, file);
		return(-1);
	}
	/*
	 * XXX Shall we add a similar test for ELF?
	 */
	if (FUNC8(fd, &execb, sizeof(execb)) == sizeof(execb) &&
	    !FUNC0(execb)) {
		FUNC7("%s: %s is an executable program", progname, file);
		goto error1;
	}
	(void) FUNC3(fd);
	if (rflag) {
		/*
		 * aside: note that 'cp' is technically a 'const char *'
		 * (because it points into 'file'), even though strrchr
		 * returns a value of type 'char *'.
		 */
		if ((cp = FUNC11(file, '/')) == NULL) {
			if (FUNC2(file,".") == 0)
				return(1);
		} else {
			if (cp == file) {
				fd = FUNC2(file,"/");
			} else {
				/* strlcpy will change the '/' to '\0' */
				dlen = cp - file + 1;
				dirpath = FUNC5(dlen);
				FUNC10(dirpath, file, dlen);
				fd = FUNC2(file, dirpath);
				FUNC4(dirpath);
			}
			if (fd == 0)
				return(1);
		}
		FUNC7("%s: %s: is not removable by you\n", progname, file);
	}
	return(0);

error1:
	FUNC7(" and is unprintable\n");
	(void) FUNC3(fd);
	return(-1);
}