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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  KIODISABLE ; 
 int /*<<< orphan*/  KIOENABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,size_t) ; 
 char** modes ; 
 size_t FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(u_int mode)
{
	uint64_t *buf;
	int fd;

	buf = FUNC3(&fd);
	FUNC0(FUNC5(fd, KIOENABLE, mode) == 0,
	    "Unable to enable kcov %s",
	    mode < FUNC6(modes) ? modes[mode] : "unknown mode");

	FUNC2(&buf[0], 0);

	FUNC7(0);
	FUNC0(FUNC1(&buf[0]) != 0, "No records found");

	FUNC0(FUNC5(fd, KIODISABLE, 0) == 0,
	    "Unable to disable kcov");

	FUNC4(fd, buf);
}