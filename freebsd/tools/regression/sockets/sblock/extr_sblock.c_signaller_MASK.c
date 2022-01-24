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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int /*<<< orphan*/  SIGHUP ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void
FUNC6(pid_t locking_recver_pid, int fd)
{
	ssize_t len;
	char ch;

	if (FUNC3(2) != 0) {
		FUNC4("signaller sleep(2)");
		return;
	}
	if (FUNC1(locking_recver_pid, SIGHUP) < 0) {
		FUNC4("signaller kill(%d)", locking_recver_pid);
		return;
	}
	if (FUNC3(1) != 0) {
		FUNC4("signaller sleep(1)");
		return;
	}
	len = FUNC2(fd, &ch, sizeof(ch), 0);
	if (len < 0) {
		FUNC4("signaller send");
		return;
	}
	if (len != sizeof(ch)) {
		FUNC5("signaller send ret %zd", len);
		return;
	}
	if (FUNC0(fd) < 0) {
		FUNC4("signaller close");
		return;
	}
	if (FUNC3(1) != 0) {
		FUNC4("signaller sleep(1)");
		return;
	}
}