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
typedef  int ssize_t ;
typedef  int off_t ;

/* Variables and functions */
 int BUFLEN ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static off_t
FUNC4(unsigned char * prepend, size_t count, off_t *gsizep, int fd)
{
	char buf[BUFLEN];
	off_t in_tot;
	ssize_t w;

	in_tot = count;
	w = FUNC3(STDOUT_FILENO, prepend, count);
	if (w == -1 || (size_t)w != count) {
		FUNC1("write to stdout");
		return -1;
	}
	for (;;) {
		ssize_t rv;

		rv = FUNC2(fd, buf, sizeof buf);
		if (rv == 0)
			break;
		if (rv < 0) {
			FUNC1("read from fd %d", fd);
			break;
		}
		FUNC0(rv);

		if (FUNC3(STDOUT_FILENO, buf, rv) != rv) {
			FUNC1("write to stdout");
			break;
		}
		in_tot += rv;
	}

	if (gsizep)
		*gsizep = in_tot;
	return (in_tot);
}