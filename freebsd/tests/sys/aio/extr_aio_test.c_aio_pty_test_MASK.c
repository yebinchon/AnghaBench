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
struct termios {int dummy; } ;
struct sigevent {int dummy; } ;
struct aio_context {int dummy; } ;
typedef  int /*<<< orphan*/  completion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PTY_LEN ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  FUNC3 (struct aio_context*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aio_context*,int /*<<< orphan*/ ,struct sigevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct aio_context*,int /*<<< orphan*/ ,struct sigevent*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct termios*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int errno ; 
 scalar_t__ FUNC9 (int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int,struct termios*) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static void
FUNC13(completion comp, struct sigevent *sev)
{
	struct aio_context ac;
	int read_fd, write_fd;
	struct termios ts;
	int error;

	FUNC0("aio");
	FUNC2();

	FUNC1(FUNC9(&read_fd, &write_fd, NULL, NULL, NULL) == 0,
	    "openpty failed: %s", FUNC10(errno));


	if (FUNC11(write_fd, &ts) < 0) {
		error = errno;
		errno = error;
		FUNC6("tcgetattr failed: %s", FUNC10(errno));
	}
	FUNC7(&ts);
	if (FUNC12(write_fd, TCSANOW, &ts) < 0) {
		error = errno;
		errno = error;
		FUNC6("tcsetattr failed: %s", FUNC10(errno));
	}
	FUNC3(&ac, read_fd, write_fd, PTY_LEN);

	FUNC5(&ac, comp, sev);
	FUNC4(&ac, comp, sev);

	FUNC8(read_fd);
	FUNC8(write_fd);
}