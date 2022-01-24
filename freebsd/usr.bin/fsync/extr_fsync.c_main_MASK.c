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
 int EX_NOINPUT ; 
 int EX_OK ; 
 int EX_OSERR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int
FUNC6(int argc, char *argv[])
{
	int fd;
	int i;
	int rval;
	
	if (argc < 2) {
		FUNC4();
		/* NOTREACHED */
	}
	
	rval = EX_OK;
	for (i = 1; i < argc; ++i) {
		if ((fd = FUNC3(argv[i], O_RDONLY)) == -1) {
			FUNC5("open %s", argv[i]);
			if (rval == EX_OK)
				rval = EX_NOINPUT;
			continue;
		}

		if (FUNC2(fd) == -1) {
			FUNC5("fsync %s", argv[i]);
			if (rval == EX_OK)
				rval = EX_OSERR;
		}
		FUNC0(fd);
	}
	FUNC1(rval);
	/* NOTREACHED */
}