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
 int O_CREAT ; 
 int O_RDWR ; 
 int O_XATTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int,int) ; 
 int FUNC5 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int,char*,int) ; 

__attribute__((used)) static void
FUNC11(char *pname)
{
	int fd = -1;
	int afd = -1;
	int i, size;
	char *context = "0123456789ABCDF";
	char *pbuf;

	if (pname == NULL) {
		FUNC1(1);
	}

	size = sizeof (char) * 1024;
	pbuf = (char *)FUNC9(size);
	for (i = 0; i < size / FUNC8(context); i++) {
		int offset = i * FUNC8(context);
		(void) FUNC6(pbuf+offset, size-offset, "%s", context);
	}

	if ((fd = FUNC4(pname, O_CREAT|O_RDWR, 0777)) < 0) {
		(void) FUNC2(stderr, "open(%s, O_CREAT|O_RDWR, 0777) failed."
		    "\n[%d]: %s.\n", pname, errno, FUNC7(errno));
		FUNC1(errno);
	}
	if (FUNC10(fd, pbuf, 1024) < 1024) {
		(void) FUNC2(stderr, "write(fd, pbuf, 1024) failed."
		    "\n[%d]: %s.\n", errno, FUNC7(errno));
		FUNC1(errno);
	}

#if UNSUPPORTED
	if ((afd = openat(fd, "xattr", O_CREAT | O_RDWR | O_XATTR, 0777)) < 0) {
		(void) fprintf(stderr, "openat failed.\n[%d]: %s.\n",
		    errno, strerror(errno));
		exit(errno);
	}
	if (write(afd, pbuf, 1024) < 1024) {
		(void) fprintf(stderr, "write(afd, pbuf, 1024) failed."
		    "\n[%d]: %s.\n", errno, strerror(errno));
		exit(errno);
	}

	(void) close(afd);
#endif
	(void) FUNC0(fd);
	FUNC3(pbuf);
}