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
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(void)
{
	struct stat statbuf;

	FUNC2(fd, (off_t)0);
	FUNC2(fd, (off_t)100000);
	FUNC1(fd, &statbuf);
	if (statbuf.st_size != (off_t)100000) {
		FUNC3("no extend on truncate! not posix!\n");
		FUNC0(130);
	}
	FUNC2(fd, (off_t)0);
}