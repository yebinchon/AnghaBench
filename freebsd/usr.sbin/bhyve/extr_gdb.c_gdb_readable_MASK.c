#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  enum ev_type { ____Placeholder_ev_type } ev_type ;
struct TYPE_5__ {int len; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FIONREAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ cur_comm ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  gdb_lock ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(int fd, enum ev_type event, void *arg)
{
	ssize_t nread;
	int pending;

	if (FUNC6(fd, FIONREAD, &pending) == -1) {
		FUNC10("FIONREAD on GDB socket");
		return;
	}

	/*
	 * 'pending' might be zero due to EOF.  We need to call read
	 * with a non-zero length to detect EOF.
	 */
	if (pending == 0)
		pending = 1;

	/* Ensure there is room in the command buffer. */
	FUNC4(&cur_comm, pending);
	FUNC0(FUNC3(&cur_comm) >= pending);

	nread = FUNC9(fd, FUNC5(&cur_comm), FUNC3(&cur_comm));
	if (nread == 0) {
		FUNC2();
	} else if (nread == -1) {
		if (errno == EAGAIN)
			return;

		FUNC10("Read from GDB socket");
		FUNC2();
	} else {
		cur_comm.len += nread;
		FUNC7(&gdb_lock);
		FUNC1(fd);
		FUNC8(&gdb_lock);
	}
}