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
struct printer {int /*<<< orphan*/  printer; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILMOD ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int SPL_BUFSIZ ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int,char*,size_t) ; 

__attribute__((used)) static int
FUNC10(struct printer *pp, char *file, size_t size)
{
	register char *cp;
	char buf[SPL_BUFSIZ];
	size_t amt, i;
	int err, fd, j;

	fd = FUNC4(file, O_CREAT|O_EXCL|O_WRONLY, FILMOD);
	if (fd < 0) {
		FUNC2("%s: readfile: error on open(%s): %s",
			 pp->printer, file, FUNC7(errno));
		/*NOTREACHED*/
	}
	FUNC0();
	err = 0;
	for (i = 0; i < size; i += SPL_BUFSIZ) {
		amt = SPL_BUFSIZ;
		cp = buf;
		if (i + amt > size)
			amt = size - i;
		do {
			j = FUNC5(STDOUT_FILENO, cp, amt);
			if (j <= 0) {
				FUNC2("%s: lost connection", pp->printer);
				/*NOTREACHED*/
			}
			amt -= j;
			cp += j;
		} while (amt > 0);
		amt = SPL_BUFSIZ;
		if (i + amt > size)
			amt = size - i;
		if (FUNC9(fd, buf, amt) != (ssize_t)amt) {
			err++;
			break;
		}
	}
	(void) FUNC1(fd);
	if (err) {
		FUNC2("%s: write error on close(%s)", pp->printer, file);
		/*NOTREACHED*/
	}
	if (FUNC3()) {		/* file sent had bad data in it */
		if (FUNC6(file, '/') == NULL)
			(void) FUNC8(file);
		return (0);
	}
	FUNC0();
	return (1);
}