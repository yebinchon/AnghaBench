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
struct sigevent {int dummy; } ;
struct aio_context {int dummy; } ;
typedef  int /*<<< orphan*/  completion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FIFO_LEN ; 
 int /*<<< orphan*/  FIFO_PATHNAME ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC3 (struct aio_context*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aio_context*,int /*<<< orphan*/ ,struct sigevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct aio_context*,int /*<<< orphan*/ ,struct sigevent*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int errno ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(completion comp, struct sigevent *sev)
{
	int error, read_fd = -1, write_fd = -1;
	struct aio_context ac;

	FUNC0("aio");
	FUNC2();

	FUNC1(FUNC8(FIFO_PATHNAME, 0600) != -1,
	    "mkfifo failed: %s", FUNC10(errno));

	read_fd = FUNC9(FIFO_PATHNAME, O_RDONLY | O_NONBLOCK);
	if (read_fd == -1) {
		error = errno;
		errno = error;
		FUNC6("read_fd open failed: %s",
		    FUNC10(errno));
	}

	write_fd = FUNC9(FIFO_PATHNAME, O_WRONLY);
	if (write_fd == -1) {
		error = errno;
		errno = error;
		FUNC6("write_fd open failed: %s",
		    FUNC10(errno));
	}

	FUNC3(&ac, read_fd, write_fd, FIFO_LEN);
	FUNC5(&ac, comp, sev);
	FUNC4(&ac, comp, sev);

	FUNC7(read_fd);
	FUNC7(write_fd);
}