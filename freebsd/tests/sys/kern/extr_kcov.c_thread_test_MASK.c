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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  KIODISABLE ; 
 int /*<<< orphan*/  KIOENABLE ; 
 int /*<<< orphan*/ * FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,size_t) ; 
 char** modes ; 
 size_t FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_test_helper ; 

__attribute__((used)) static void
FUNC7(u_int mode)
{
	pthread_t thread;
	uint64_t *buf;
	int fd;

	buf = FUNC1(&fd);

	FUNC0(FUNC3(fd, KIOENABLE, mode) == 0,
	    "Unable to enable kcov %s",
	    mode < FUNC4(modes) ? modes[mode] : "unknown mode");

	FUNC5(&thread, NULL, thread_test_helper, buf);
	FUNC6(thread, NULL);

	FUNC0(FUNC3(fd, KIODISABLE, 0) == 0,
	    "Unable to disable kcov");

	FUNC2(fd, buf);
}