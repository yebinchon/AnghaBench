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
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,char*,unsigned long) ; 

__attribute__((used)) static void
FUNC8(int fd, char *buf, unsigned long buflen)
{
	fd_set wfd;
	int i;

	while (buflen) {
		FUNC1(&wfd);
		FUNC0(fd, &wfd);
		i = FUNC5(fd+1, NULL, &wfd, NULL, NULL);
		if (i < 0)
			FUNC2(1, "select failed");
		if (i != 1) {
			FUNC3(1, "select returned unexpected value %d\n", i);
			FUNC4(1);
		}
		i = FUNC7(fd, buf, buflen);
		if (i < 0) {
			if (errno != EAGAIN)
				FUNC6("write failed");
			FUNC4(1);
		}
		buf += i;
		buflen -= i;
	}
}