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
typedef  int /*<<< orphan*/  optval ;
typedef  enum ev_type { ____Placeholder_ev_type } ev_type ;

/* Variables and functions */
 int /*<<< orphan*/  EVF_READ ; 
 int /*<<< orphan*/  EVF_WRITE ; 
 int /*<<< orphan*/  SOCK_NONBLOCK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_NOSIGPIPE ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int cur_fd ; 
 scalar_t__ cur_vcpu ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int first_stop ; 
 int /*<<< orphan*/  gdb_lock ; 
 int /*<<< orphan*/  gdb_readable ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  gdb_writable ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * read_event ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int stepping_vcpu ; 
 int stop_pending ; 
 int stopped_vcpu ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * write_event ; 

__attribute__((used)) static void
FUNC11(int fd, enum ev_type event, void *arg)
{
	int optval, s;

	s = FUNC0(fd, NULL, NULL, SOCK_NONBLOCK);
	if (s == -1) {
		if (arg != NULL)
			FUNC2(1, "Failed accepting initial GDB connection");

		/* Silently ignore errors post-startup. */
		return;
	}

	optval = 1;
	if (FUNC8(s, SOL_SOCKET, SO_NOSIGPIPE, &optval, sizeof(optval)) ==
	    -1) {
		FUNC9("Failed to disable SIGPIPE for GDB connection");
		FUNC1(s);
		return;
	}

	FUNC6(&gdb_lock);
	if (cur_fd != -1) {
		FUNC1(s);
		FUNC10("Ignoring additional GDB connection.");
	}

	read_event = FUNC4(s, EVF_READ, gdb_readable, NULL);
	if (read_event == NULL) {
		if (arg != NULL)
			FUNC2(1, "Failed to setup initial GDB connection");
		FUNC7(&gdb_lock);
		return;
	}
	write_event = FUNC4(s, EVF_WRITE, gdb_writable, NULL);
	if (write_event == NULL) {
		if (arg != NULL)
			FUNC2(1, "Failed to setup initial GDB connection");
		FUNC5(read_event);
		read_event = NULL;
	}

	cur_fd = s;
	cur_vcpu = 0;
	stepping_vcpu = -1;
	stopped_vcpu = -1;
	stop_pending = false;

	/* Break on attach. */
	first_stop = true;
	FUNC3();
	FUNC7(&gdb_lock);
}