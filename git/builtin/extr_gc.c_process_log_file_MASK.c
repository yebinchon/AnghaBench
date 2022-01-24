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
struct stat {scalar_t__ st_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  tempfile; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__ log_lock ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void)
{
	struct stat st;
	if (FUNC4(FUNC5(&log_lock), &st)) {
		/*
		 * Perhaps there was an i/o error or another
		 * unlikely situation.  Try to make a note of
		 * this in gc.log along with any existing
		 * messages.
		 */
		int saved_errno = errno;
		FUNC3(stderr, FUNC0("Failed to fstat %s: %s"),
			FUNC6(log_lock.tempfile),
			FUNC9(saved_errno));
		FUNC2(stderr);
		FUNC1(&log_lock);
		errno = saved_errno;
	} else if (st.st_size) {
		/* There was some error recorded in the lock file */
		FUNC1(&log_lock);
	} else {
		/* No error, clean up any old gc.log */
		FUNC10(FUNC7("gc.log"));
		FUNC8(&log_lock);
	}
}