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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mapper ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int,char*,int) ; 

int
FUNC6(int argc, char **argv)
{
	int fd;
	char buf[BUFSIZ];
	pthread_t pt;

	if (argc != 2) {
		(void) FUNC3("usage: %s <file name>\n", argv[0]);
		FUNC0(1);
	}

	if ((fd = FUNC1(argv[1], O_RDWR|O_CREAT|O_TRUNC, 0666)) == -1) {
		FUNC2("open");
		FUNC0(1);
	}

	if (FUNC4(&pt, NULL, mapper, &fd) != 0) {
		FUNC2("pthread_create");
		FUNC0(1);
	}
	for (;;) {
		if (FUNC5(fd, buf, sizeof (buf)) == -1) {
			FUNC2("write");
			FUNC0(1);
		}
	}

	/* NOTREACHED */
	return (0);
}