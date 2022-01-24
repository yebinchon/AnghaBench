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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int fsize ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 scalar_t__ offset ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ vflag ; 

__attribute__((used)) static void
FUNC5(int fd)
{
	off_t   roffset = 0;

	roffset = FUNC4() % fsize;
	if (FUNC2(fd, (offset + roffset))  < 0) {
		FUNC3("truncate");
		FUNC0(7);
	}

	if (vflag) {
		(void) FUNC1(stderr,
		    "Truncated at offset %ld\n",
		    (offset + roffset));
	}
}