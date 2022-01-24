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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  interrupted ; 
 scalar_t__ FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6(int fd)
{
	ssize_t len;
	char ch;

	if (FUNC5(1) != 0)
		FUNC0(-1, "FAIL: locking_recver: sleep");
	len = FUNC4(fd, &ch, sizeof(ch), 0);
	if (len < 0 && errno != EINTR)
		FUNC0(-1, "FAIL: locking_recver: recv");
	if (len < 0 && errno == EINTR) {
		FUNC3(stderr, "PASS\n");
		FUNC2(0);
	}
	if (len == 0)
		FUNC1(-1, "FAIL: locking_recver: recv: eof");
	if (!interrupted)
		FUNC1(-1, "FAIL: locking_recver: not interrupted");
}