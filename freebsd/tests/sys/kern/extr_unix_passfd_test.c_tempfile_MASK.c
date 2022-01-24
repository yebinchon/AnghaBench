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
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int PATH_MAX ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(int *fdp)
{
	char path[PATH_MAX];
	int fd;

	FUNC3(path, PATH_MAX, "%s/unix_passfd.XXXXXXXXXXXXXXX",
	    FUNC1("TMPDIR") == NULL ? "/tmp" : FUNC1("TMPDIR"));
	fd = FUNC2(path);
	FUNC0(fd != -1, "mkstemp(%s) failed", path);
	(void)FUNC4(path);
	*fdp = fd;
}